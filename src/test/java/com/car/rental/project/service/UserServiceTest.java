package com.car.rental.project.service;


import com.car.rental.project.model.User;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.*;

@RunWith(SpringRunner.class)
@SpringBootTest
@AutoConfigureMockMvc
class UserServiceTest {

    @Mock
    private UserService userService;

    private User user = new User();

    @BeforeEach
    void setUp(){
        user.setUsername("user");
        user.setPassword("user123");
    }

    @Test
    void shouldReturnUser(){
        when(userService.findByUsername(anyString())).thenReturn(user);
        User u = userService.findByUsername("user");
        assertEquals(u,user);
        assertEquals("user",u.getUsername());
    }

    @Test
    void shouldSaveUser(){
        doAnswer( i ->{
            User u1 = i.getArgument(0);
            assertNotNull(u1.getUsername());
            assertNotNull(u1.getPassword());
            assertEquals("user",u1.getUsername());
            assertEquals("user123",u1.getPassword());
            return null;
        }).when(userService).save(any(User.class));

        userService.save(user);
    }

    @Test
    void shouldReturnTrue(){
        when(userService.existsByUsername(user.getUsername())).thenReturn(true);

        assertTrue(userService.existsByUsername("user"));
    }

}