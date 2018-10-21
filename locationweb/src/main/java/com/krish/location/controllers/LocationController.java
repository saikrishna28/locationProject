package com.krish.location.controllers;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.krish.location.entities.Location;
import com.krish.location.repos.LocationRepository;
import com.krish.location.service.LocationService;
import com.krish.location.util.EmailUtil;
import com.krish.location.util.ReportUtil;


@Controller
public class LocationController {
	
	@Autowired
	LocationService service;
	
	@Autowired
	EmailUtil emailUtil;
	
	@Autowired
	ReportUtil reportUtil;
	
	@Autowired
	LocationRepository repo;
	
	@Autowired
	ServletContext sc;
	
	@RequestMapping("/showCreate")
	public String showCreate() {
		return "createLocation";
	}
	
	@RequestMapping("/saveLoc")
	public String saveLocation(@ModelAttribute("location") Location location, ModelMap modelMap) {
		location.setCode(location.getCode().toString().toUpperCase());
		Location saveLocation = service.saveLocation(location);
		String msg = "Location saved with ID:"+saveLocation.getId();
		modelMap.addAttribute("msg", msg);
		emailUtil.sendEmail("springmtest28@gmail.com", "Location Saved", "Location saved, pandaga chesuko inka");
		return "createLocation";
		
	}
	
	@RequestMapping("/displayLocations")
	public String displayLocations(ModelMap modelMap) {
		List<Location> locations = service.getAllLocations();
		modelMap.addAttribute("locations", locations);
		return "displayLocations";
	}
	
	@RequestMapping("/deleteLocation")
	public String deleteLocation(@RequestParam("id") int id, ModelMap modelMap) {
		//Location location = service.getLocationById(id);
		Location location = new Location();
		location.setId(id);
		service.deleteLocation(location);
		List<Location> locations = service.getAllLocations();
		modelMap.addAttribute("locations", locations);
		return "displayLocations";
	}
	
	@RequestMapping("/editLocation")
	public String editLocation(@RequestParam("id") int id, ModelMap modelMap) {
		Location locations = service.getLocationById(id);
		modelMap.addAttribute("location", locations);
		return "updateLocation";
	}
	
	@RequestMapping("/updateLoc")
	public String updateLocation(@ModelAttribute("location") Location location, ModelMap modelMap) {
		service.updateLocation(location);
		List<Location> locations = service.getAllLocations();
		modelMap.addAttribute("locations", locations);
		return "displayLocations";
	}
	
	@RequestMapping("/generateReport")
	public String generateReport() {
		List<Object[]> data = repo.findTypeAndTypeCount();
		String path = sc.getRealPath("/");
		reportUtil.generatePieChar(path, data);
		return "report";
	}
}
