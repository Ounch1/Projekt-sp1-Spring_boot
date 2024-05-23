package se.yrgo.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import se.yrgo.data.VehicleRepository;
import se.yrgo.domain.Vehicle;

@Controller
@RequestMapping("/website/vehicles") // Base URL
public class VehicleController {
    @Autowired
    private VehicleRepository data; // Where all the data is stored (?)

    @RequestMapping(value="/newVehicle.html",method=RequestMethod.POST) // RequestMethod.POST means it will be a page where you can submit data
    public String newVehicle(Vehicle vehicle) {
        data.save(vehicle);
        return "redirect:/website/vehicles/list.html";
    }

    @RequestMapping(value="/newVehicle.html",method=RequestMethod.GET) // RequestMethod.GET means it will be a page where you can get data, this one displays the submit form
    public ModelAndView renderNewVehicleForm(){
        Vehicle newVehicle = new Vehicle();
        return new ModelAndView("newVehicle", "form", newVehicle);
    }

    @RequestMapping(value="/list.html", method=RequestMethod.GET) // Get all vehicles in the repository
    public ModelAndView vehicles(){
        List<Vehicle> allVehicles = data.findAll();
        return new ModelAndView("allVehicles" , "vehicles",
                allVehicles);
    }


    @RequestMapping(value="/vehicle/{name}") // Do not include {} in the URL, so for example http://localhost:8080/website/vehicles/vehicle/Car1
    public ModelAndView showVehicleByName(@PathVariable("name") String name) {// PathVariable means it takes value from @RequestMapping(value="/vehicle/{name}")
        Vehicle vehicle= data.findByName(name);
        return new ModelAndView("vehicleInfo" , "vehicle", vehicle); // Pass on vehicle object to vehicleInfo.jsp
    }
    
}

