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
        <!-- Logiques sur des bool�ens -->
        ${ true && true } <br /> <!-- Affiche true -->
        ${ true && false } <br /> <!-- Affiche false -->
        ${ !true || false } <br /> <!-- Affiche false -->
		
        <!-- Calculs arithm�tiques -->
        ${ 10 / 4 } <br /> <!-- Affiche 2.5 -->
        ${ 10 mod 4 } <br /> <!-- Affiche le reste de la division enti�re, soit 2 -->
        ${ 10 % 4 } <br /> <!-- Affiche le reste de la division enti�re, soit 2 -->
        ${ 6 * 7 } <br /> <!-- Affiche 42 -->
        ${ 63 - 8 } <br /> <!-- Affiche 55 -->
        ${ 12 / -8 } <br /> <!-- Affiche -1.5 -->
        ${ 7 / 0 } <br /> <!-- Affiche Infinity -->
		
        <!-- Compare les caract�res 'a' et 'b'. Le caract�re 'a' �tant bien situ� avant le caract�re 'b' dans l'alphabet ASCII, cette EL affiche true. -->
        ${ 'a' < 'b' } <br />  
		
        <!-- Compare les cha�nes 'hip' et 'hit'. Puisque 'p' < 't', cette EL affiche false. -->
        ${ 'hip' gt 'hit' } <br /> 
		
        <!-- Compare les caract�res 'a' et 'b', puis les cha�nes 'hip' et 'hit'. Puisque le premier test renvoie true et le second false, le r�sultat est false. -->
        ${ 'a' < 'b' && 'hip' gt 'hit' } <br /> 
		
        <!-- Compare le r�sultat d'un calcul � une valeur fixe. Ici, 6 x 7 vaut 42 et non pas 48, le r�sultat est false. -->
        ${ 6 * 7 == 48 } <br /> 
</body>
</html>