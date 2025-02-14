package activities;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

class Plane {

	private List<String> passengers;
	private int maxPassengers;
	private Date lastTimeTookOf;
	private Date lastTimeLanded;

	public Plane(int maxPassengers) {
		// passengers=[];

		this.maxPassengers = maxPassengers;
		this.passengers = new ArrayList<>();
	}
	
	public void onboard(String passenger){
		this.passengers.add(passenger);		
	}
	
	public Date takeOff(){
		
		this.lastTimeTookOf=new Date();		
		
		return lastTimeTookOf;	
	}
	
	public void land() {
		this.lastTimeLanded= new Date();
		this.passengers.clear();
		
		
	}
	
	public Date getLastTimeLanded(){
		return lastTimeLanded;
		
	}

	public List<String> getPassengers() {
		
		return passengers;
		
		
	}
}

public class Activity6 {

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		
		Plane plane =new Plane(10);
		plane.onboard("Debashish A");
		plane.onboard("Debashish B");
		plane.onboard("Debashish C");
		
		System.out.println("Plane took off at: " + plane.takeOff());
        //Print list of people on board
        System.out.println("People on the plane: " + plane.getPassengers());
		
        //Flying.....
        Thread.sleep(5000);
        //Plane has landed
        plane.land();
        //Plane lands
        System.out.println("Plane landed at: " + plane.getLastTimeLanded());
        System.out.println("People on the plane after landing: " + plane.getPassengers());

	}

}
