//Genera el número para los eventos
Funcion nAl <- Probs 
	Definir nAl Como Entero;
	nAl = Aleatorio(1, 1000);
Fin Funcion

//Funcion aumentar pociones
Funcion pocs = funcion_pocs
	Definir pocs, nAl Como entero;
	nAl = Probs();
	Si (nAl >= 1 y nAl <= 14)o(nAl >= 30 y nAl <= 50)o(nAl>= 76 y nAl <= 130)o(nAl >= 169 y nAl<=280) o (nAl >=496 y nAl <= 662) o (nAl >= 932 y nAl <= 986)
		Escribir "Recibiste una poción";
		pocs = pocs + 1;
		Escribir "";
	FinSi
FinFuncion

//Función aumentar pociones G
Funcion pocsG = funcion_pocsG
	Definir pocsG, nAl, nAl2 Como entero;
	nAl = Probs();
	nAl2 = Aleatorio(1,1000);
	Si (nAl2 >= nAl)o (nAl >= 970)
		Escribir "Recibiste una poción G";
		pocsG = pocsG + 1;
		Escribir "";
	FinSi
FinFuncion

//Evento para que aparezca el mago
Funcion eve = funcion_mago
	Definir thn, aInt, nAdiv, op, nAl, punt, eve, pocs Como Entero;
	nAl = Probs();
	Si (nAl > 100 y nAl < 130) o (nAl > 300 y nAl <340) o (nAl > 420 y nAl < 469) o (nAl > 789 y nAl < 800)
		thn = Aleatorio(1, 4);
		nAl = Aleatorio(1, 50);
		aInt = Aleatorio(2,8);
		Escribir "Sientes un aura extraña proviniendo de las paredes...";
		Esperar 3 Segundos;
		Escribir "-Hoohoola, caballero. Soy un mago y vengo a jugar contigo";
		Esperar thn Segundos;
		Escribir "-Estoy pensando un númerito entre el 1 y el...";
		Esperar thn Segundos;
		Escribir "-50, si adivinas te daré un Reregalito";
		Escribir "-Pero cuentas con... hmmm..."; 
		Esperar thn Segundos;
		Escribir "-",aInt," intentos, así que, ¿quieres juegar conmigo?";
		Escribir "1.- Sí";
		Escribir '2.- No";
		Leer op;
		Escribir "";
		Si op = 1
			Escribir "-Empezemos, ¡jijijijij!";
			Repetir
				aInt = aInt - 1;
				Leer nAdiv;
				Si nAdiv = nAl
					Escribir "-¡Lo lograste, caballero! Toma esto como recompensa";
					eve = 1;
				SiNo
					Si nAdiv > nAl
						Escribir "-¡Fallaste, muy para la derecha!";
					SiNo
						Escribir "-¡Fallaste, muy para la izquierda!';
					FinSi
					Si aInt = 0
						Escribir "-Ya no titienes intentos. Pero descuida, nos volveremos a encontrar, adiosito. ¡Jijijiji!";
					sino
						Escribir "-Uy, jijiji. Aún cuentas con ", aInt, " intentos, sigues en juego";
					FinSi
				FinSi
			Hasta Que aInt = 0 o nAdiv = nAl
			Escribir "";
		SiNo
			Escribir "-Está bien, cababallero, pero me verás de nuevo en algún momento";
			eve = punt + 5;
		FinSi
	FinSi
FinFuncion

//Función aumentar ataque
Funcion ataq_func = ataq_funcion
	Definir nAl, nAl2, ataq_func Como entero;
	nAl = probs();
	nAl2 = Aleatorio(1,20000);
	Si (nAl2 > nAl) o (nAl2 > 1420 y nAl2 < 1669)
		ataq_func = Aleatorio(2,4);
		Escribir "Se aumentaron ", ataq_func, " puntos de daño";
	FinSi
FinFuncion

//Función aumentar armadura
Funcion armd_func = subir_arm()
	Definir nAl, nAl2, armd_func Como Entero;
	nAl = probs();
	nAl2 = Aleatorio (1, 2000);
	Si (nAl > 400 y nAl < 500) o (nAl2 > 320 y nAl2 < 400) o (nAl2 > nAl)
		armd_func = Aleatorio(5,10);
		Escribir "Se aumentaron ", armd_func, " puntos de armadura";
	FinSi
FinFuncion





//Función cuando ataques
Funcion ataq_a_ene = ataq_en_pelea()
	Definir ataq_a_ene como entero;
	ataq_a_ene = Aleatorio(-3,2);
FinFuncion
//Copiar y pegar
//ataq_a_ene = ataq_en_pelea();
//ataq_a_ene + ataq;







//Inicio de la aventura
Algoritmo PseCrawler
	Definir vida, punt, op, nAl, eve, pocs, pocCur, pocsG, pocGCur, armd, ataq, nAl2, ataq_a_ene, ataqAcum, ataq_func,armd_func, protect Como Entero;
	Definir calbrdano, vidcalbru Como Entero;
	pocs = 5;
	pocCur = 5;
	pocsG = 3;
	pocGCur = 15;
	vida = 100;
	punt = 0;
	armd = 0;
	ataq = 5;
	Escribir "Instrucciones: Escribe el numero que se indique en la consola para interactuar.";
	Escribir "";
	Escribir "Eres un caballero atrapado en una mazmorra, camina hacía tu dirección preferida para terminar tu aventura.";
	Escribir "";
	Esperar 2 Segundos;
	Repetir
		
		eve = 0;
		Escribir "";
		Escribir "¿Qué hacer?';
		Escribir '1.- Caminar';
		Escribir '2.- Revisar inventario';
		Escribir '3.- Revisar puntaje";
		Si punt >= 100
			Escribir "4.- Enfrentarse al Dragón";
		FinSi
		Escribir "";
		Leer op;
		Segun op
			1:
				Escribir "1.- Norte";
				Escribir "2.- Este";
				Escribir "3.- Sur";
				Escribir "4.- Oeste";
				Escribir "";
				Leer op;
				Segun op
					1:
						punt = punt + 1;
						eve = funcion_mago();
						punt = punt + eve; 
						
						//Copiar y pegar cuando se vaya activar un eve = 1
						Si eve = 1
							pocs = pocs + funcion_pocs();
							pocsG = pocsG + funcion_pocsG();
							
							ataq_func = ataq_funcion();
							ataqAcum = ataqAcum + ataq_func;
							ataq = ataq + ataqAcum;
							
							armd_func = subir_arm;
							armd = armd + armd_func;
							
							eve = 0;
						FinSi
						
					2:
						punt = punt + 1;
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
					3:
						punt = punt + 1;
						
						nAl = Aleatorio(0,1000);
						Si (nAl > 100 y nAl < 200) o (nAl > 460 y nAl < 540) o (nAl > 780 y nAl < 900)
							Escribir "";
							Escribir "Encontraste un cofre, ¿deseas abrirlo?";
							Escribir "1.- Sí";
							Escribir "2.- No";
							Leer op;
							Segun op 
								1:
									eve = 1;
									pocs = pocs + funcion_pocs();
									pocsG = pocsG + funcion_pocsG();
									
									ataq_func = ataq_funcion();
									ataqAcum = ataqAcum + ataq_func;
									ataq = ataq + ataqAcum;
									
									armd_func = subir_arm;
									armd = armd + armd_func;
									eve = 0;
								2:
									
									punt = punt + 10;
							Finsegun
						FinSi
						
						//calacabruta
						nAl = Aleatorio(0,1000);
						Si (nAl > 46 y nAl < 86) o (nAl > 161 y nAl < 294) o (nAl > 307 y nAl < 365) o (nal > 569 y nal < 615 ) o (nAl > 742 y nAl < 798) o (nal > 967 y nal < 999)
							vidcal = Aleatorio(40, 65);
							Escribir "";
							Escribir "Una gran calaca te quiere matar";
							Repetir
								protect = vida + armd;
								caldano = Aleatorio(4,9);
								Escribir "";
								Escribir "¿Qué hacer?";
								Escribir "1.- Atacar";
								Escribir "2.- Revisar inventario";
								leer op;
								Segun op
									1:
										
										ataq_a_ene = ataq_en_pelea();
										vidcalbru = vidcal - (ataq_a_ene + ataq);
										Escribir "Hiciste ", ataq_a_ene + ataq, " de ataque, la calaca ahora tiene ", vidcal, " de vida";
										
									2:
										Escribir "Cuentas con: ";
										Escribir vida, " puntos de vida";
										Escribir armd, " puntos de armadura";
										Escribir ataq, " puntos de ataque";
										Escribir pocs, " pociones";
										Escribir pocsG, " pociones G";
										Escribir "";
										Escribir "1.- Beber alguna poción";
										Escribir "2.- Salir de inventario";
										Leer op;
										Si op = 1
											Repetir
												Escribir "";
												Escribir "1.- Beber poción";
												Escribir "2.- Beber poción G";
												Escribir "3.- Salir de inventario";
												Escribir "";
												Leer op;
												Segun op
													1:
														Si pocs > 0
															pocs = pocs - 1;
															vida = vida + pocCur;
															Escribir "Ahora tienes ", pocs, " pociones en el inventario";
															Escribir "Ahora cuentas con ", vida, " puntos de vida";
														SiNo
															Escribir "Ya no tienes pociones";
														FinSi
													2:	
														Si pocsG > 0
															pocsG = pocsG - 1;
															vida = vida + pocGCur;
															Escribir "Ahora tienes ", pocsG, " pociones G en el inventario";
															Escribir "Ahora cuentas con ", vida, " puntos de vida";
														SiNo
															Escribir "Ya no tienes pociones G";
														FinSi
												FinSegun
											Hasta Que op = 3
										FinSi
								FinSegun
								Si vidcalbru > 0
									Si armd > 0
										armd = armd - caldano;
										si armd < 0 
											armd = 0;
										FinSi
									FinSi
									
									Si protect <= vida
										vida = vida - calbrdano;
										Escribir "Te golpeó la calaca, recibiste ", caldano, " de daño";
										Escribir "Ahora cuentas con ", vida, " de vida";
									SiNo
										protect = protect - calbrdano;
										Escribir "Te golpeó la calaca, recibiste ", caldano, " de daño";
										Si protect <= vida
											Escribir "¡Se rompió tu armadura!";
											vida = protect;
										SiNo
											Escribir "Aún cuentas con ", armd, " de armadura";
										FinSi
									FinSi
								FinSi	
							Hasta Que vidcal < 1 o vida <= 0
						FinSi
						
						
						
						
						
					4:
						punt = punt + 1;
						
						
						
						
						
						
						
						
						
						
				FinSegun
			2:
				Escribir "Cuentas con: ";
				Escribir vida, " puntos de vida";
				Escribir armd, " puntos de armadura";
				Escribir ataq, " puntos de ataque";
				Escribir pocs, " pociones";
				Escribir pocsG, " pociones G";
				Escribir "";
				Escribir "1.- Beber alguna poción";
				Escribir "2.- Salir de inventario";
				Leer op;
				Si op = 1
					Repetir
						Escribir "";
						Escribir "1.- Beber poción";
						Escribir "2.- Beber poción G";
						Escribir "3.- Salir de inventario";
						Escribir "";
						Leer op;
						Segun op
							1:
								Si pocs > 0
									pocs = pocs - 1;
									vida = vida + pocCur;
									Escribir "Ahora tienes ", pocs, " pociones en el inventario";
									Escribir "Ahora cuentas con ", vida, " puntos de vida";
								SiNo
									Escribir "Ya no tienes pociones";
								FinSi
							2:	
								Si pocsG > 0
									pocsG = pocsG - 1;
									vida = vida + pocGCur;
									Escribir "Ahora tienes ", pocsG, " pociones G en el inventario";
									Escribir "Ahora cuentas con ", vida, " puntos de vida";
								SiNo
									Escribir "Ya no tienes pociones G";
								FinSi
						FinSegun
					Hasta Que op = 3
				FinSi
			3:
				Escribir "Tu puntaje es de ", punt, " puntos";
				Si punt >= 75
					Escribir "Ya casi llegas con el Dragón";
				SiNo
					Si punt >= 45
						Escribir "Aún falta para llegar con el Dragón';
					SiNo
						Escribir "Te falta mucho para llegar con el Dragón";
					FinSi
				FinSi
				
			4:	
				Si punt >= 100
					Escribir ". . .";
					
				FinSi
		FinSegun
		
		
	Hasta Que vida <= 0
	Si vida <= 0
		Escribir "";
		Escribir "Perdiste, reinicia el programa para volver a empezar";
	FinSi
	
FinAlgoritmo
