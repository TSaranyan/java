package thirikkale.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import thirikkale.data.PartnerDao;
import thirikkale.model.Partner;

@Controller
@SessionAttributes("affetcedPartner")
public class PartnerController {

	@Autowired
	@Qualifier("partnerValidator")
	private Validator validator;

	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(validator);
	}
	
	@RequestMapping(value = "/login")
	public ModelAndView home(Map<String, Object> model, @ModelAttribute("partner")
	Partner partner, @RequestParam("vehicleType")
	String vehicleType) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("publisher/login");
		partner.setVehicleType(vehicleType);
		return modelAndView;
	}

	@RequestMapping(value = "/createpartner")
	public ModelAndView createPartner(Map<String, Object> model,@ModelAttribute("partner") @Validated
	Partner partner,BindingResult result) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("publisher/login");
		try {
			if (!result.hasErrors()) {
				String partnerId = PartnerDao.createPartner(partner);
				partner.setId(partnerId);
				modelAndView.setViewName("cars/createcar_success");
				modelAndView.addObject("affetcedPartner", partner);
			}
		}
		catch (Exception e) {
			model.put("controllererror", e.getMessage());
			System.out.println("Error while executing the path '/createvehicle'. Error message: " + e.getMessage());
		}
		return modelAndView;
	}

}
