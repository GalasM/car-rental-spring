package com.car.rental.project.web;

import com.car.rental.project.model.*;
import com.car.rental.project.repository.*;
import com.car.rental.project.service.OfferService;
import com.car.rental.project.social.FBConnection;
import com.car.rental.project.social.FBGraph;
import com.car.rental.project.service.SecurityService;
import com.car.rental.project.service.UserService;
import com.car.rental.project.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

@Controller
public class UserController {
    private final UserService userService;
    private final SecurityService securityService;
    private final UserValidator userValidator;
    private final OfferService offerService;
    private final CarRepository carRepository;
    private final LocationRepository locationRepository;
    private final UserRepository userRepository;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;
    private final FaultRepository faultRepository;
    private final RentRepository rentRepository;
    private final OpinionRepository opinionRepository;

    @Autowired
    public UserController(UserService userService, SecurityService securityService, UserValidator userValidator, OfferService offerService, CarRepository carRepository, LocationRepository locationRepository, UserRepository userRepository, BCryptPasswordEncoder bCryptPasswordEncoder, FaultRepository faultRepository, RentRepository rentRepository, OpinionRepository opinionRepository) {
        this.userService = userService;
        this.securityService = securityService;
        this.userValidator = userValidator;
        this.offerService = offerService;
        this.carRepository = carRepository;
        this.locationRepository = locationRepository;
        this.userRepository = userRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
        this.faultRepository = faultRepository;
        this.rentRepository = rentRepository;
        this.opinionRepository = opinionRepository;
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User userForm, RedirectAttributes redirectAttributes, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            redirectAttributes.addFlashAttribute("error","password");
            return "redirect:/index";
        }
        userService.save(userForm);
        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());
        redirectAttributes.addFlashAttribute("register", "true");
        return "redirect:/index";
    }


    @GetMapping("/login")
    public String login(Model model) {
        return "index";
    }

    @GetMapping("/login-error")
    public String login(RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("blad","login");
        return "redirect:/index";
    }

    @GetMapping("/fblogin")
    public String service(HttpServletRequest req, HttpServletResponse res) {
        String code = req.getParameter("code");
        if (code.equals("")) {
            throw new RuntimeException(
                    "ERROR: Didn't get code parameter in callback.");
        }
        FBConnection fbConnection = new FBConnection();
        String accessToken = fbConnection.getAccessToken(code);
        FBGraph fbGraph = new FBGraph(accessToken);
        String graph = fbGraph.getFBGraph();
        Map<String, String> fbProfileData = fbGraph.getGraphData(graph);
        if(!userService.existsByUsername(fbProfileData.get("name")))
        userService.save(new User(fbProfileData.get("name"),fbProfileData.get("id")));

        securityService.autoLogin(fbProfileData.get("name"), fbProfileData.get("id"));

        return "redirect:/index";
    }

    @PostMapping("/changepassword")
    public String changePassword(RedirectAttributes redirectAttributes, HttpServletRequest request) {
        User u = userRepository.findByUsername(request.getParameter("username"));
        String newPass = request.getParameter("newPassword");
        String confPass = request.getParameter("passwordConfirm");
        String oldPass = request.getParameter("oldPassword");

        if(newPass.equals(confPass) && bCryptPasswordEncoder.matches(oldPass,u.getPassword())) {
            u.setPassword(newPass);
            userService.save(u);
            redirectAttributes.addFlashAttribute("changed", "true");
        }
        else {
            redirectAttributes.addFlashAttribute("notchanged", "true");
        }
        return "redirect:/panel/"+u.getUsername();
    }

    @GetMapping({"/","/index"})
    public String index(Model model) {
        return "index";
    }


    @GetMapping("/flota")
    public String flota(Model model) {
        List<Car> cars = carRepository.findAll();
        model.addAttribute("cars",cars);
        return "flota";
    }
    @GetMapping("/kontakt")
    public String kontakt(Model model) {
        return "kontakt";
    }
    @GetMapping("/ofirmie")
    public String ofirmie(Model model) {
        List<Opinion> opinion = opinionRepository.findAll();
        model.addAttribute("opinion",opinion);
        return "ofirmie";
    }

    @GetMapping("/adminPanel")
    public String adminPanel(Model model) {
        List<Rent> rents = rentRepository.findAll();
        model.addAttribute("rents", rents);
        int money = rentRepository.sumMoney();
        model.addAttribute("money",money);
        return "adminPanel";
    }

    @GetMapping("/offer")
    public String offer(Model model) {
        List<Offer>offers = offerService.findAll();
        offers.forEach(e -> {
            Set<CarPhoto> p = new TreeSet<>(Comparator.comparing(CarPhoto::getId));
            p.addAll(e.getCar().getCarPhoto());
            e.getCar().setCarPhoto(p);
        });
        model.addAttribute ("offerList", offers);
        return "offer";
    }

    @GetMapping("/locations")
    public String locations(Model model) {
        List<Location> locations = locationRepository.findAll();
        model.addAttribute("locations",locations);
        return "locations";
    }

    @GetMapping("/users")
    public String users(Model model) {
        List<User> users = userRepository.findUsers();
        model.addAttribute("users",users);
        return "users";
    }

    @GetMapping("/cars")
    public String cars(Model model) {
        List<Car> cars = carRepository.findAll();
        model.addAttribute("cars", cars);
        return "cars";
    }

    @GetMapping("/faults")
    public String faults(Model model) {
        List <Fault> faults = faultRepository.findAll();
        model.addAttribute("faults", faults);
        return "faults";
    }
}