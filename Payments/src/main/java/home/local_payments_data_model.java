package home;



public class local_payments_data_model {
String Customer_ID,Source_account_number,Target_account_number,Amount_Base_Currency;
public local_payments_data_model( String customer_ID, String source_account_number, String target_account_number,
		String amount_Base_Currency) {
	Customer_ID = customer_ID;
	Source_account_number = source_account_number;
	Target_account_number = target_account_number;
	Amount_Base_Currency = amount_Base_Currency;
}
public String getCustomer_ID() {
	return Customer_ID;
}
public void setCustomer_ID(String customer_ID) {
	Customer_ID = customer_ID;
}
public String getSource_account_number() {
	return Source_account_number;
}
public void setSource_account_number(String source_account_number) {
	Source_account_number = source_account_number;
}
public String getTarget_account_number() {
	return Target_account_number;
}
public void setTarget_account_number(String target_account_number) {
	Target_account_number = target_account_number;
}
public String getAmount_Base_Currency() {
	return Amount_Base_Currency;
}
public void setAmount_Base_Currency(String amount_Base_Currency) {
	Amount_Base_Currency = amount_Base_Currency;
}

@Override
public String toString() {
	return "local_payments_data_model [ Customer_ID=" + Customer_ID + ", Source_account_number="
			+ Source_account_number + ", Target_account_number=" + Target_account_number + ", Amount_Base_Currency="
			+ Amount_Base_Currency + "]";
}

	
	
	
}
