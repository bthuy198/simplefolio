package com.example.customers.Service.mysql;

import com.example.customers.Service.IOrderService;
import com.example.customers.model.Order;
import com.example.customers.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MSOrderService extends DBContext implements IOrderService {
    private static final String SELECT_ALL_ORDERS = "SELECT * FROM order";
    private static final String SELECT_ORDER_BY_ID = "SELECT * FROM order where (`id` = ?)";

    @Override
    public List<Order> getAllOrder() {
        Connection connection = getConnection();
        List<Order> orderList = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL_ORDERS);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Order o = getOrderFromRS(rs);
                orderList.add(o);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return orderList;
    }

    public Order getOrderFromRS(ResultSet rs) throws SQLException {
        Long id = rs.getLong("id");
        String name = rs.getString("name");
        String phone = rs.getString("phone");
        String address = rs.getString("address");
        double total = rs.getDouble("total");

        Order order = new Order(id, name, phone, address, total);
        return order;
    }

    @Override
    public Order getOrderById(long id) {
        Connection connection = getConnection();
        try{
            PreparedStatement ps = connection.prepareStatement(SELECT_ORDER_BY_ID);
            ps.setLong(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Order order = getOrderFromRS(rs);
                return order;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public void saveOrder(Order order) {

    }
}
