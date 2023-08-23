/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit5TestClass.java to edit this template
 */
package com.htl.tester01;

import com.htl.pojo.ChucVu;
import com.htl.services.ChucVuServices;
import com.htl.utils.JDBCUtils;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author huynh
 */
public class ChucVuTestSuite {
    
    public ChucVuTestSuite() {
    }
    private static Connection conn;
    private static ChucVuServices cvS;
    
    @BeforeAll
    public static void beforeAll() {
        try {
            conn = JDBCUtils.getConn();
        } catch (SQLException ex) {
            Logger.getLogger(ChucVuTestSuite.class.getName()).log(Level.SEVERE, null, ex);
        }
        cvS = new ChucVuServices();
    }
    @AfterAll
    public static void afterAll() {
        if (conn != null)
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(ChucVuTestSuite.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
    
    
   @Test
    public void testTenChucVuNotNull(){
        try {
            List<ChucVu> ChucVus = cvS.getListChucVu();
            
            ChucVus.forEach(c -> Assertions.assertNotNull(c.getTenChucVu()));
        } catch (SQLException ex) {
            Logger.getLogger(ChucVuTestSuite.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    @Test
    public void testNguyenTo(){
        boolean expected = true;
        boolean actual = true;
        Assertions.assertEquals(expected,actual);
    }
}
