package service;

import model.Customer;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CustomerService implements ICustomerService{
    private List<Customer> customerList;

    public CustomerService() {
        customerList = new ArrayList<>();

        //String name, Date birthday, String address, String img
        customerList.add(new Customer(1L, "Mai Văn Hoàn","hoan@gmail.com","HN"));
        customerList.add(new Customer(2L, "Mai Văn Nam","nam@gmail.com", "HN"));
        customerList.add(new Customer(3L, "Trần Đăng Khoa","khoa@gmail.com", "Huế"));
        customerList.add(new Customer(4L, "Nguyễn Đình Thi","thi@gmail.com", "SG"));

    }

    @Override
    public List<Customer> getAllCustomer() {
        return this.customerList;
    }

    @Override
    public Customer findCustomerById(Long id) {
        for(int i = 0; i < customerList.size(); i++){
            if(customerList.get(i).getId() == id){
                return customerList.get(i);
            }
        }
        return null;
    }

    @Override
    public void editCustomer(Customer customer) {
        for(int i = 0; i < customerList.size(); i++){
            if(customerList.get(i).getId() == customer.getId()){
                customerList.get(i).setAddress(customer.getAddress());
                customerList.get(i).setEmail(customer.getEmail());
                customerList.get(i).setName(customer.getName());
            }
        }
    }

    @Override
    public void deleteCustomerById(Long id) {
        for(int i = 0; i < customerList.size(); i++){
            if(customerList.get(i).getId() == id){
                customerList.remove(i);
            }
        }
    }

    @Override
    public void add(Customer newCustomer) {
        customerList.add(newCustomer);
    }
}
