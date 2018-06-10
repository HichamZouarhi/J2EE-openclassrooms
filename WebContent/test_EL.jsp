<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test des expressions ( Expression Language )</title>
</head>
<body>

    <p>
    
    	${ param.langur }
        <!-- Logiques sur des booléens -->
        ${ true && true } <br /> <!-- Affiche true -->
        ${ true && false } <br /> <!-- Affiche false -->
        ${ !true || false } <br /> <!-- Affiche false -->
		
        <!-- Calculs arithmétiques -->
        ${ 10 / 4 } <br /> <!-- Affiche 2.5 -->
        ${ 10 mod 4 } <br /> <!-- Affiche le reste de la division entière, soit 2 -->
        ${ 10 % 4 } <br /> <!-- Affiche le reste de la division entière, soit 2 -->
        ${ 6 * 7 } <br /> <!-- Affiche 42 -->
        ${ 63 - 8 } <br /> <!-- Affiche 55 -->
        ${ 12 / -8 } <br /> <!-- Affiche -1.5 -->
        ${ 7 / 0 } <br /> <!-- Affiche Infinity -->
		
        <!-- Compare les caractères 'a' et 'b'. Le caractère 'a' étant bien situé avant le caractère 'b' dans l'alphabet ASCII, cette EL affiche true. -->
        ${ 'a' < 'b' } <br />  
		
        <!-- Compare les chaînes 'hip' et 'hit'. Puisque 'p' < 't', cette EL affiche false. -->
        ${ 'hip' gt 'hit' } <br /> 
		
        <!-- Compare les caractères 'a' et 'b', puis les chaînes 'hip' et 'hit'. Puisque le premier test renvoie true et le second false, le résultat est false. -->
        ${ 'a' < 'b' && 'hip' gt 'hit' } <br /> 
		
        <!-- Compare le résultat d'un calcul à une valeur fixe. Ici, 6 x 7 vaut 42 et non pas 48, le résultat est false. -->
        ${ 6 * 7 == 48 } <br /> 
</body>
</html>