/*
 * Creation : Mar 13, 2017
 */
package com.ic.controller;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.cache.AccountService;
import com.cache.dto.Account;
import com.ic.dto.UserDto;
import com.ic.entity.Ictuser;
 import org.apache.log4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/user")
public class UserController {
    private final org.slf4j.Logger logger = LoggerFactory.getLogger(AccountService.class);

    @Autowired
    private AccountService accountService;
 //loginSys.do
     @RequestMapping("/loginSys")
    public ModelAndView loginSys(String userId,String userPwd) throws Exception{
         ModelAndView mv=new ModelAndView();
         System.out.println("loginSys_Finish");
         mv.addObject("userId",userId);
         mv.addObject("userPwd",userPwd);
         mv.setViewName("/user/userInfo");
         //cache test
          System.out.println("first query.....");
         accountService.getAccountByName("accountName");
          System.out.println("second query....Begin");
         accountService.getAccountByName("accountName");
         System.out.println("second query....End");
        //cache test 2
         Account account1 = accountService.getAccountByName("accountName1");
          System.out.println(account1.toString());
         Account account2 = accountService.getAccountByName("accountName2");
          System.out.println(account2.toString());

         account2.setId(121212);
         accountService.updateAccount(account2);

         // account1会走缓存
         account1 = accountService.getAccountByName("accountName1");
          System.out.println(account1.toString());
         // account2会查询db
         account2 = accountService.getAccountByName("accountName2");
          System.out.println(account2.toString());


         return mv;
    }
//
//    private static final Logger LOGGER = Logger.getLogger(UserController.class);
//
//    @Autowired
//    private IUserService userService;
//
//    @RequestMapping("/showInfo/{userId}")
//    public String showUserInfo(ModelMap modelMap, @PathVariable String userId) {
//        LOGGER.info("查询用户：" + userId);
//        Ictuser userInfo = userService.load(userId);
//       // System.out.println("userInfo:" + userInfo.getNickName());
//
//        modelMap.addAttribute("userInfo", userInfo);
//        modelMap.addAttribute("nickName", "Nic001");
//        return "/user/showInfo";
//    }
//
//    @RequestMapping("/showInfos")
//    public @ResponseBody
//    List<Ictuser> showUserInfos() {
//        LOGGER.info("查询用户全部用户");
//        List<Ictuser> userInfos = userService.findAll();
//        return userInfos;
//    }
//
//    @RequestMapping(value = "/createUser", method = RequestMethod.POST)
//    public @ResponseBody
//    String createUsers(@RequestBody UserDto angularUser) {
////        LOGGER.info("新增用户：" + angularUser.getNickName());
////        Ictuser userInfo = new Ictuser();
////        // UUID(Universally Unique Identifier)全局唯一标识符
////        userInfo.setId(UUID.randomUUID().toString());
////        userInfo.setNickName(angularUser.getNickName());
////        userInfo.setTelephone(angularUser.getTelePhone());
////        userInfo.setRegisterTime(new Date());
//
//  //      String result = userService.save(userInfo);
//    //    System.out.println("create result:" + result);
//
//        return "/index111";
//    }
}
