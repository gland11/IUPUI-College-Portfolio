import java.util.Scanner;

public class TestApp 
{
	static Scanner input = new Scanner(System.in);
	
	static double rad1,rad2,base1,height1,base2,height2;
	
	static double c1Area, c2Area,r1Area, r2Area;
	
	public static void main(String[] args) 
	{
		
		
		Circle c1 = new Circle();   
		Circle c2 = new Circle();
		
		RightTriangle r1 = new RightTriangle();
		RightTriangle r2 = new RightTriangle();
		
		circleSelect();
		
		c1.setRadius(rad1);
		c2.setRadius(rad2);
		
		c1Area = c1.getArea();
		c2Area = c2.getArea();
		
		triangleSelect();
		
		r1.setBase(base1);
		r1.setHeight(height1);
		
		r2.setBase(base2);
		r2.setHeight(height2);
		
		r1Area = r1.getArea();
		r2Area = r2.getArea();
		    
		System.out.println("\nCircle 1 area = " + c1Area);   
		System.out.println("\nCircle 1 perimeter = " + c1.getPerimeter());
		System.out.println("\nCircle 2 area = " + c2Area);   
		System.out.println("\nCircle 2 perimeter = " + c2.getPerimeter());
		
		circleCheck();
		
		System.out.print("\nRight Triangle 1 hypotenuse \n" + r1.getHypotenuse(base1, height1));
		
		System.out.println("\nRight Triangle 1 area = " + r1Area);   
		System.out.println("\nRight Triangle 1 perimeter = " + r1.getPerimeter());
		
		System.out.print("\nRight Triangle 2 hypotenuse \n" + r2.getHypotenuse(base2, height2));
		
		System.out.println("\nRight Triangle 2 area = " + r2Area);   
		System.out.println("\nRight Triangle 2 perimeter = " + r2.getPerimeter());
	
		rightTriangleCheck();
	}
	
	public static void circleSelect()
	{
		System.out.print("\nPlease enter a Radius for 1st Cirlce: ");
		
		rad1 = input.nextDouble();
		
		System.out.print("\nPlease enter a Radius for 2nd Cirlce: ");
		
		rad2 = input.nextDouble();
		
		
	}
	public static void triangleSelect()
	{
		System.out.print("\nPlease enter a Base for 1st Right Triangle: ");
		
		base1 = input.nextDouble();
		
		System.out.print("\nPlease enter a Height for 1st Right Triangle: ");
		
		height1 = input.nextDouble();
	
		System.out.print("\nPlease enter a Base for 2nd Right Triangle: ");
		
		base2 = input.nextDouble();
		
		System.out.print("\nPlease enter a Height for 2nd Right Triangle: ");
		
		height2 = input.nextDouble();
	}
	
	public static void circleCheck()
	{
		if(c1Area > c2Area)
		{
			System.out.print("\nThe 1st Cirlce has the larger area." + c1Area);
			
		}
		else
		{
			System.out.print("\nThe 2nd Cirlce has the larger area." + c2Area);
			
		}
	}
	public static void rightTriangleCheck()
	{
		if(r1Area > r2Area)
		{
			System.out.print("\nThe 1st Right Triangle has the larger area." + r1Area);
			
		}
		else
		{
			System.out.print("\nThe 2nd Right Triangle has the larger area." + r2Area);
			
		}
	}
}
