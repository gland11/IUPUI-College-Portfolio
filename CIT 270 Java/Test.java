import java.util.*;
import java.io.*;
import java.util.Scanner;

public class Test 
{
	private Scanner input = new Scanner(System.in);
	private Item[] items = new Item[100];
	
	public static void main(String[] args) 
	{
		Test foo = new Test();
		foo.mainMenu();
	}
	
	public void mainMenu()
	{
		//display menu and ask for user selection (validate)
		System.out.println("Please Select a Number. Then Press Enter.");
		System.out.println("Main Menu: ");
		System.out.println("\t1. Admin");
		System.out.println("\t2. User");
		System.out.println("\t3. Exit");
		
		System.out.println("Selection: ");
		
		int option = input.nextInt();
		
		switch (option)
		{
		case 1:
				//verify the admin login
				
				//if login correct go to the admin menu
				adminMenu();
				break;
		case 2:
				userMenu();
				break;
		case 3:
			String answer;
			boolean yn;
			//confirm they want to exit and then exit
			System.out.println("Are you sure you want to exit?");
			System.out.println("y/n");
			while(true)
			{
				
			
				answer = input.nextLine().trim().toLowerCase();
				if(answer.equals("y"))
				{
					yn = true;
					break;
				}
				else if(answer.equals("n"))
				{
					yn = false;
					mainMenu();
					break;
				}
				else
				{
					System.out.println("Sorry, I didn't catch that. Please anser y/n");
				}
			}
			
		}
	}
	
	public void adminMenu()
	{
		//display menu and ask for user selection
		System.out.println("Please Select a Number. Then Press Enter.");
		System.out.println("\nAdmin Menu");
		System.out.println("\t1.  Add new item.");
		System.out.println("\t2.  Search and update item.");
		System.out.println("\t3.  Search and delete.");
		
		System.out.println("Selection: ");
		
		int option = input.nextInt();//option that user selects
		int found = -1;
		switch (option)
		{
		case 1:
				addItem();
				break;
		case 2:
				updateItem(found);
				break;
		case 3:
				deleteItem(found);
				break;
		case 4:
				return;
		}
	}
	
	public void userMenu()
	{
		//display menu and ask for user selection (validate)
		System.out.println("Please Select a Number. Then Press Enter.");
		
		System.out.println("\t1. Search Item.");
		System.out.println("\t2. Place Order.");
		
		System.out.println("Selection: ");
		
		int option = input.nextInt();
		int found = -1;
		switch (option)
		{
		case 1:
				displayAllItems();
				break;
		case 2:
				purchaseItem(found);
				break;
		default:
				return;
		}
	}
	private void displayAllItems()
	{
		
	}
	
	public int searchForItem()
	{
		return -1;
	}
	
	private void deleteItem(int index)
	{
		//
	}
	
	private void updateItem(int index)
	{
		
	}
	
	private void addItem()
	{
		
	}
	
	private void purchaseItem(int index)
	{
		
	}
}
class Item
{
	private String id;
	private String name;
	private double price;
	private int quantity;
	
	//add constructors
	//add get and set methods
}