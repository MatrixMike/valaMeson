/*
 * voltage2.vala
 * 
 * Author 2018 Mikeh 
 * 04.06.2018 13:09:58
 * 
 * Nested for loops eventually lead you to a matrix (but)
 * many people have some difficulty interpreting a matrix so a sorted list
 * could be better. Inspecting the output of this program we can see that there
 * is a fork when we are interested in two (or multiple) regions of the 
 * output. 
 * 
 * Discussion points: let the compile do more work and increase readability-> 
 * regulators is defined as a real quantity but all currently known Vregs (78xx series)
 * are Integer values. 
 */
class Demo.HelloWorld : GLib.Object {
public static int main(string[] args)
{
	const double headroom = 2.0;
	const double LiIonCell = 3.7;
	
	double[] LiIon = {3.7, 7.4, 11.1, 14.8};
	double[] regulators = {5.0, 6.0, 8.0, 9.0, 10.0, 12.0, 15.0, 18.0, 24.0};
	for (int l = 1; l < 6; l++) {
		stdout.printf("series result %5.2f\n", l*LiIonCell);
//		LiIon[l] = l*LiIonCell;

	}

	
	foreach (double v in  LiIon){
		foreach (double r in regulators ) {
			if ((v) >= (r+headroom) ) 
			stdout.printf("Use LiIon source %5.2f to produce Vreg %5.2f output\n", v,r );
		}
		stdout.printf("\n");
	}		
	return 0;
}
}
