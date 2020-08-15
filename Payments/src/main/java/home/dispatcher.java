package home;


import java.sql.SQLException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.cj.Session;

@Controller
public class dispatcher {
	@Autowired
	private database_connection database_connection_data;
	@RequestMapping("/local_payments")
	public String local_payments() {
		
		return "local_payments";
	}
	@RequestMapping("/cross_payments")
	public String cross_payments() {
		return "cross_payments";
	}
	@RequestMapping("/payment_details")
	public String payment_details() {
		return "payment_details";
	}
	@PostMapping("/local_payment_data")
	public String post_local(local_payments_data_model local_payments_data_model_obj,Model model,HttpSession httpSession) throws ClassNotFoundException, SQLException {


		if (database_connection_data.ok(local_payments_data_model_obj)==1) {
			httpSession.setAttribute("local","local");
			model.addAttribute("local_data",database_connection_data.local_data(local_payments_data_model_obj));
			return "success_payments_local";
		} else {
return "sorry";
		}

		
	}
	@PostMapping("/cross_payment_data")
	public String post_cross(cross_payment_data_model cross_payment_data_model_obj,Model model,HttpSession httpSession) throws ClassNotFoundException, SQLException {
		
		if (database_connection_data.ok1(cross_payment_data_model_obj)==1) {
			httpSession.setAttribute("cross","cross");
			model.addAttribute("local_data",database_connection_data.cross_data(cross_payment_data_model_obj));
			return "success_payments_cross";
		} else {
return "sorry";
	
		
	}
	}
	@PostMapping("/payment_details_data")
	public String post_details(payment_details_data_model payment_details_data_model_obj,Model model) throws ClassNotFoundException, SQLException {

		model.addAttribute("payment_details",database_connection_data.payment_details(payment_details_data_model_obj));
		//System.out.println(payment_details_data_model_obj);
		return "payment_details_success";
	}

}
