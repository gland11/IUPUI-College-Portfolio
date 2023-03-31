import java.util.Scanner;

public class lab_02 
{
	static double sharePrice, Number_of_shares = 0, Purchase_price,
			Sale_price, commisionTotal, Purchase_commission, sale_commission, commissionTotal, net_Price;
			
			static String str;
			
			static Scanner input = new Scanner(System.in);
			
			static boolean Check = false;
			
	public static void main(String[] args) 
	{
				
		
		sharesBghtNSold();
		
				if (Check == true)
				{
					purchasePrice();
					if(Check == true)
					{
						purchaseComm();
						if(Check == true)
						{
							salePrice();
							if(Check == true)
							{
								saleComm();
								if(Check == true)
								{
									result();
								}
								else if(Check == false)
								{
									saleComm();
								}
							}
							else if(Check == false)
							{
								salePrice();
							}
						}
						else if(Check == false)
						{
							purchaseComm();
						}
					}
					else if(Check == false)
					{
						purchasePrice();
					}
				}
				else if(Check == false)
				{
					sharesBghtNSold();
				}						
	}	
			
	public static void sharesBghtNSold()
	{
		System.out.print("Enter the number of shares bought & sold: ");
		
		str = input.toString();
		try
		{
			Number_of_shares = Double.parseDouble(str);
			Check = true;
		}
		catch(Exception e)
		{
			System.out.println("Please enter a valid number!");
			Check = false;
		}
	}
	public static void purchaseComm()
	{
		System.out.println("Enter the purchase commission: ");
		str = input.toString();
		try
		{
			Purchase_commission = Double.parseDouble(str);
			Check = true;
		}
		catch(Exception e)
		{
			System.out.println("Please enter a valid number!");
			Check = false;
		}
	}
	public static void purchasePrice()
	{
		System.out.println("Enter the purchase price per share: ");
		str = input.toString();
		try
		{
			Purchase_price = Double.parseDouble(str);
			Check = true;
		}
		catch(Exception e)
		{
			System.out.println("Please enter a valid number!");
			Check = false;
		}
	}

	public static void salePrice()
	{
		System.out.println("Enter the Sale price: ");
		str = input.toString();
		try
		{
			Sale_price = Double.parseDouble(str);
			Check = true;
		}
		catch(Exception e)
		{
			System.out.println("Please enter a valid number!");
			Check = false;
		}
	}
	public static void saleComm()
	{
		System.out.println("Enter the Sale commission ");
		str = input.toString();
		try
		{
			sale_commission = Double.parseDouble(str);
			Check = true;
		}
		catch(Exception e)
		{
			System.out.println("Please enter a valid number!");
			Check = false;
		}
	}
	public static void result()
	{
		sharePrice = (Number_of_shares * Purchase_price ) - (Number_of_shares * Sale_price ) ;
		commissionTotal = (Number_of_shares * Purchase_price * Purchase_commission )+ (Number_of_shares * Sale_price * sale_commission );
		net_Price = commissionTotal + sharePrice ;

		System.out.println("Net loss of " + net_Price);
	}
}
