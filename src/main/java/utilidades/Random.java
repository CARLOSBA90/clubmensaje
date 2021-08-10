package utilidades;

public class Random {
	/// Crear un valor aleatorio para identificador
	public static int numeros(int cant) {
		String numeros = "0123456789";
		StringBuilder builder = new StringBuilder();
		while(cant-- !=0) {
			int caracter = (int) (Math.random()* numeros.length());
			builder.append(numeros.charAt(caracter));
		}
		return Integer.valueOf(builder.toString());
	}
	
	public static String alfanum(int cant) {
		String numeros = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcddefghijklmnopqrstuvwxyz0123456789";
		StringBuilder builder = new StringBuilder();
		while(cant-- !=0) {
			int caracter = (int) (Math.random()* numeros.length());
			builder.append(numeros.charAt(caracter));
		}
		return builder.toString();
	}

}
