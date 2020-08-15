package home;

public class payment_details_data_model {
	String Transaction_Reference_Number;
	String Customer_ID;
	public payment_details_data_model(String transaction_Reference_Number, String customer_ID) {
		Transaction_Reference_Number = transaction_Reference_Number;
		Customer_ID = customer_ID;
	}
	public String getTransaction_Reference_Number() {
		return Transaction_Reference_Number;
	}
	public void setTransaction_Reference_Number(String transaction_Reference_Number) {
		Transaction_Reference_Number = transaction_Reference_Number;
	}
	public String getCustomer_ID() {
		return Customer_ID;
	}
	public void setCustomer_ID(String customer_ID) {
		Customer_ID = customer_ID;
	}
	@Override
	public String toString() {
		return "payment_details_data_model [Transaction_Reference_Number=" + Transaction_Reference_Number
				+ ", Customer_ID=" + Customer_ID + "]";
	}



}
