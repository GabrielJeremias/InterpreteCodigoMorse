package
{
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	public class Main extends Sprite
	{
		private var contenedor:Array;
		private var i:int;
		private var posX:int = 20;
		private var posY:int = 20;
		
		public function Main()
		{
			i = 0;
			contenedor = new Array();
			stage.addEventListener(KeyboardEvent.KEY_DOWN, letras);
		}
		
		public function letras(event:KeyboardEvent):void
		{
			if (event.charCode != 13)
			{
				if (event.charCode == 45)
				{
					contenedor[i] = "l";
					i++;
				}
				else if (event.charCode == 46)
				{
					contenedor[i] = "p";
					i++;
				}
				
			}			
			else
			{
				escribir();
			}
			
			if (event.charCode == 32)
			{
				posX += 25;
			}
			trace(event.charCode)
		}
		
		public function escribir():void
		{
			var codigo:String = "";
			
			for (var contador:int = 0; contador < contenedor.length; contador++)
			{
				codigo += contenedor[contador];
			}
			
			for (var vaciador:int = 0; vaciador < contenedor.length; vaciador++)
			{
				contenedor[vaciador] = "";
			}
			
			i = 0;
			dibujar(codigo);
		}
		
		public function dibujar(codigoCompleto:String):void
		{
			if (posX > stage.stageWidth - 100)
			{
				posX = 20;
				posY += 25;
			}
			else
			{
				posX += 25;
			}
			switch (codigoCompleto)
			{
				//Letras
				case "pl": 
				{	
					var letraA:Shape = new Shape();
					letraA.graphics.lineStyle(2, 0x000000);
					letraA.graphics.moveTo(0, 20);
					letraA.graphics.lineTo(0, 0);
					letraA.graphics.moveTo(0, 0);
					letraA.graphics.lineTo(20, 0);
					letraA.graphics.moveTo(20, 0);
					letraA.graphics.lineTo(20, 20);					
					letraA.graphics.moveTo(0, 10);
					letraA.graphics.lineTo(20, 10);
					letraA.x = posX;
					letraA.y = posY;
					addChild(letraA);
					trace("A");
					break;
				}
				case "lppp": 
				{
					var letraB:Shape = new Shape();
					letraB.graphics.lineStyle(2, 0x000000);
					letraB.graphics.moveTo(0, 20);
					letraB.graphics.lineTo(0, 0);
					letraB.graphics.moveTo(0, 0);
					letraB.graphics.lineTo(20, 0);
					letraB.graphics.moveTo(20, 0);
					letraB.graphics.lineTo(10, 10);
					letraB.graphics.moveTo(10, 10);
					letraB.graphics.lineTo(20, 10);
					letraB.graphics.moveTo(20, 10);
					letraB.graphics.lineTo(20, 20);
					letraB.graphics.moveTo(20, 20);
					letraB.graphics.lineTo(0, 20);
					letraB.x = posX;
					letraB.y = posY;
					addChild(letraB);
					trace("B");
					break;
				}
				case "lplp": 
				{
					var letraC:Shape = new Shape();
					letraC.graphics.lineStyle(2, 0x000000);
					letraC.graphics.moveTo(0, 20);
					letraC.graphics.lineTo(0, 0);
					letraC.graphics.moveTo(0, 0);
					letraC.graphics.lineTo(20, 0);
					letraC.graphics.moveTo(0, 20);					
					letraC.graphics.lineTo(20, 20);
					letraC.x = posX;
					letraC.y = posY;
					addChild(letraC);
					trace("C");
					break;
				}
				case "lpp": 
				{
					var letraD:Shape = new Shape();
					letraD.graphics.lineStyle(2, 0x000000);
					letraD.graphics.moveTo(0, 20);
					letraD.graphics.lineTo(0, 0);
					letraD.graphics.moveTo(0, 0);
					letraD.graphics.lineTo(15, 0);
					letraD.graphics.moveTo(15, 0);					
					letraD.graphics.lineTo(20, 5);
					letraD.graphics.moveTo(20, 5);					
					letraD.graphics.lineTo(20, 15);
					letraD.graphics.moveTo(20, 15);					
					letraD.graphics.lineTo(15, 20);
					letraD.graphics.moveTo(15, 20);					
					letraD.graphics.lineTo(0, 20);
					letraD.x = posX;
					letraD.y = posY;
					addChild(letraD);
					trace("D");
					break;
				}
				case "p": 
				{
					var letraE:Shape = new Shape();
					letraE.graphics.lineStyle(2, 0x000000);
					letraE.graphics.moveTo(0, 20);
					letraE.graphics.lineTo(0, 0);
					letraE.graphics.moveTo(0, 0);
					letraE.graphics.lineTo(20, 0);
					letraE.graphics.moveTo(0, 20);
					letraE.graphics.lineTo(20, 20);
					letraE.graphics.moveTo(0, 10);
					letraE.graphics.lineTo(20, 10);
					letraE.x = posX;
					letraE.y = posY;
					addChild(letraE);
					trace("E");
					break;
				}
				case "pplp": 
				{
					var letraF:Shape = new Shape();
					letraF.graphics.lineStyle(2, 0x000000);
					letraF.graphics.moveTo(0, 20);
					letraF.graphics.lineTo(0, 0);
					letraF.graphics.moveTo(0, 0);
					letraF.graphics.lineTo(20, 0);
					letraF.graphics.moveTo(0, 10);
					letraF.graphics.lineTo(20, 10);
					letraF.x = posX;
					letraF.y = posY;
					addChild(letraF);
					trace("F");
					break;
				}
				case "llp": 
				{
					var letraG:Shape = new Shape();
					letraG.graphics.lineStyle(2, 0x000000);					
					letraG.graphics.moveTo(20,0);
					letraG.graphics.lineTo(0,0);
					letraG.graphics.moveTo(0,0);
					letraG.graphics.lineTo(0, 20);
					letraG.graphics.moveTo(0, 20);					
					letraG.graphics.lineTo(20, 20);
					letraG.graphics.moveTo(20, 20);
					letraG.graphics.lineTo(20, 10);
					letraG.graphics.moveTo(20, 10);
					letraG.graphics.lineTo(10, 10);
					letraG.graphics.moveTo(10, 10);
					letraG.graphics.lineTo(10, 15);
					letraG.x = posX;
					letraG.y = posY;
					addChild(letraG);	
					trace("G");
					break;
				}
				case "pppp": 
				{
					var letraH:Shape = new Shape();
					letraH.graphics.lineStyle(2, 0x000000);					
					letraH.graphics.moveTo(0,20);
					letraH.graphics.lineTo(0, 0);
					letraH.graphics.moveTo(20,20);
					letraH.graphics.lineTo(20, 0);
					letraH.graphics.moveTo(0,10);
					letraH.graphics.lineTo(20, 10);
					letraH.x = posX;
					letraH.y = posY;
					addChild(letraH);	
					trace("H");
					break;
				}
				case "pp": 
				{
					var letraI:Shape = new Shape();
					letraI.graphics.lineStyle(2, 0x000000);					
					letraI.graphics.lineTo(20, 0);
					letraI.graphics.moveTo(10,0);
					letraI.graphics.lineTo(10, 20);
					letraI.graphics.moveTo(0,20);
					letraI.graphics.lineTo(20, 20);
					letraI.x = posX;
					letraI.y = posY;
					addChild(letraI);	
					trace("I");
					break;
				}
				case "plll": 
				{
					var letraJ:Shape = new Shape();
					letraJ.graphics.lineStyle(2, 0x000000);					
					letraJ.graphics.lineTo(20, 0);
					letraJ.graphics.moveTo(10,0);
					letraJ.graphics.lineTo(10, 20);
					letraJ.graphics.moveTo(0,20);
					letraJ.graphics.lineTo(10, 20);
					letraJ.x = posX;
					letraJ.y = posY;
					addChild(letraJ);	
					trace("J");
					break;
				}
				case "lpl": 
				{
					var letraK:Shape = new Shape();
					letraK.graphics.lineStyle(2, 0x000000);					
					letraK.graphics.lineTo(0, 20);
					letraK.graphics.moveTo(0,10);
					letraK.graphics.lineTo(20, 0);
					letraK.graphics.moveTo(0,10);
					letraK.graphics.lineTo(20, 20);
					letraK.x = posX;
					letraK.y = posY;
					addChild(letraK);	
					trace("K");
					break;
				}
				case "plpp": 
				{
					var letraL:Shape = new Shape();
					letraL.graphics.lineStyle(2, 0x000000);					
					letraL.graphics.lineTo(0, 20);
					letraL.graphics.moveTo(0, 20);
					letraL.graphics.lineTo(20, 20);
					letraL.x = posX;
					letraL.y = posY;
					addChild(letraL);
					trace("L");
					break;
				}
				case "ll": 
				{
					var letraM:Shape = new Shape();
					letraM.graphics.lineStyle(2, 0x000000);
					letraM.graphics.moveTo(0, 20);
					letraM.graphics.lineTo(0, 0);
					letraM.graphics.moveTo(0, 0);
					letraM.graphics.lineTo(10, 10);
					letraM.graphics.moveTo(10, 10);
					letraM.graphics.lineTo(20, 0);
					letraM.graphics.moveTo(20, 0);
					letraM.graphics.lineTo(20, 20);					
					letraM.x = posX;
					letraM.y = posY;
					addChild(letraM);
					trace("M");
					break;
				}
				case "lp": 
				{
					var letraN:Shape = new Shape();
					letraN.graphics.lineStyle(2, 0x000000);
					letraN.graphics.moveTo(0, 20);
					letraN.graphics.lineTo(0, 0);
					letraN.graphics.moveTo(0, 0);
					letraN.graphics.lineTo(20, 20);
					letraN.graphics.moveTo(20, 20);
					letraN.graphics.lineTo(20, 0);					
					letraN.x = posX;
					letraN.y = posY;
					addChild(letraN);
					trace("N");
					break;
				}
				case "llpll": 
				{
					var letraEnie:Shape = new Shape();
					letraEnie.graphics.lineStyle(2, 0x000000);
					letraEnie.graphics.moveTo(0, 20);
					letraEnie.graphics.lineTo(0, 4);
					letraEnie.graphics.moveTo(0, 4);
					letraEnie.graphics.lineTo(20, 20);
					letraEnie.graphics.moveTo(20, 20);
					letraEnie.graphics.lineTo(20, 4);
					letraEnie.graphics.moveTo(0, 0);
					letraEnie.graphics.lineTo(10, -1);
					letraEnie.graphics.moveTo(10, -1);
					letraEnie.graphics.lineTo(10, 1);
					letraEnie.graphics.moveTo(10, 1);
					letraEnie.graphics.lineTo(20, 0);
					letraEnie.x = posX;
					letraEnie.y = posY;
					addChild(letraEnie);
					trace("Ñ");
					break;
				}
				case "lll": 
				{
					var letraO:Shape = new Shape();
					letraO.graphics.lineStyle(2, 0x000000);
					letraO.graphics.moveTo(5, 0);
					letraO.graphics.lineTo(15, 0);
					letraO.graphics.moveTo(15, 0);					
					letraO.graphics.lineTo(20, 5);
					letraO.graphics.moveTo(20, 5);					
					letraO.graphics.lineTo(20, 15);
					letraO.graphics.moveTo(20, 15);					
					letraO.graphics.lineTo(15, 20);
					letraO.graphics.moveTo(15, 20);					
					letraO.graphics.lineTo(5, 20);
					letraO.graphics.moveTo(5, 20);
					letraO.graphics.lineTo(0, 15);
					letraO.graphics.moveTo(0, 15);
					letraO.graphics.lineTo(0, 5);
					letraO.graphics.moveTo(0, 5);
					letraO.graphics.lineTo(5, 0);					
					letraO.x = posX;
					letraO.y = posY;
					addChild(letraO);
					trace("O");
					break;
				}
				case "pllp": 
				{
					var letraP:Shape = new Shape();
					letraP.graphics.lineStyle(2, 0x000000);
					letraP.graphics.beginFill(0xffffff);
					letraP.graphics.drawEllipse(0, 0, 18, 21);
					letraP.graphics.endFill();
					letraP.x = posX;
					letraP.y = posY;
					addChild(letraP);
					trace("P");
					break;
				}
				case "llpl": 
				{
					var letraQ:Shape = new Shape();
					letraQ.graphics.lineStyle(2, 0x000000);
					letraQ.graphics.beginFill(0xffffff);
					letraQ.graphics.drawEllipse(0, 0, 18, 21);
					letraQ.graphics.endFill();
					letraQ.graphics.moveTo(15, 18);
					letraQ.graphics.lineTo(20, 22);
					letraQ.x = posX;
					letraQ.y = posY;
					addChild(letraQ);
					trace("Q");
					break;
				}
				case "plp": 
				{
					var letraR:Shape = new Shape();
					letraR.graphics.lineStyle(2, 0x000000);
					letraR.graphics.moveTo(0, 20);
					letraR.graphics.lineTo(0, 0);
					letraR.graphics.moveTo(0, 0);
					letraR.graphics.lineTo(20, 0);
					letraR.graphics.moveTo(20, 0);
					letraR.graphics.lineTo(10, 10);
					letraR.graphics.moveTo(10, 10);
					letraR.graphics.lineTo(20, 10);
					letraR.graphics.moveTo(20, 10);
					letraR.graphics.lineTo(20, 20);
					letraR.x = posX;
					letraR.y = posY;
					addChild(letraR);
					trace("R");
					break;
					break;
				}
				case "ppp": 
				{
					var letraS:Shape = new Shape();
					letraS.graphics.lineStyle(2, 0x000000);					
					letraS.graphics.moveTo(20,0);
					letraS.graphics.lineTo(0,0);
					letraS.graphics.moveTo(0,0);
					letraS.graphics.lineTo(0, 10);
					letraS.graphics.moveTo(0, 10);
					letraS.graphics.lineTo(20, 10);
					letraS.graphics.moveTo(20, 10);
					letraS.graphics.lineTo(20, 20);
					letraS.graphics.moveTo(20, 20);
					letraS.graphics.lineTo(0, 20);
					letraS.graphics.moveTo(0, 20);
					letraS.graphics.lineTo(0, 15);
					letraS.graphics.moveTo(20, 0);
					letraS.graphics.lineTo(20, 5);
					letraS.x = posX;
					letraS.y = posY;
					addChild(letraS);	
					trace("S");
					break;
				}
				case "l": 
				{
					var letraT:Shape = new Shape();
					letraT.graphics.lineStyle(2, 0x000000);					
					letraT.graphics.lineTo(20, 0);
					letraT.graphics.moveTo(10,0);
					letraT.graphics.lineTo(10, 20);
					letraT.graphics.moveTo(0,20);					
					letraT.x = posX;
					letraT.y = posY;
					addChild(letraT);	
					trace("T");
					break;
				}
				case "ppl": 
				{
					var letraU:Shape = new Shape();
					letraU.graphics.lineStyle(2, 0x000000);
					letraU.graphics.moveTo(20, 0);
					letraU.graphics.lineTo(20, 20);
					letraU.graphics.moveTo(20, 20);
					letraU.graphics.lineTo(0, 20);
					letraU.graphics.moveTo(0, 20);
					letraU.graphics.lineTo(0, 0);
					letraU.x = posX;
					letraU.y = posY;
					addChild(letraU);
					trace("U");
					break;
				}
				case "pppl": 
				{
					var letraV:Shape = new Shape();
					letraV.graphics.lineStyle(2, 0x000000);
					letraV.graphics.lineTo(10, 20);
					letraV.graphics.moveTo(10, 20);
					letraV.graphics.lineTo(20, 0);
					letraV.x = posX;
					letraV.y = posY;
					addChild(letraV);
					trace("V");
					break;
				}
				case "pll": 
				{
					var letraW:Shape = new Shape();	
					letraW.graphics.lineStyle(2, 0x000000);
					letraW.graphics.lineTo(5, 20);
					letraW.graphics.moveTo(5, 20);
					letraW.graphics.lineTo(10, 0);
					letraW.graphics.moveTo(10, 0);
					letraW.graphics.lineTo(15, 20);
					letraW.graphics.moveTo(15, 20);
					letraW.graphics.lineTo(20, 0);
					letraW.x = posX;
					letraW.y = posY;
					addChild(letraW);
					trace("W");
					break;
				}
				case "lppl": 
				{
					var letraX:Shape = new Shape();	
					letraX.graphics.lineStyle(2, 0x000000);
					letraX.graphics.lineTo(20, 20);
					letraX.graphics.moveTo(20, 0);
					letraX.graphics.lineTo(0, 20);
					letraX.x = posX;
					letraX.y = posY;
					addChild(letraX);
					trace("X");
					break;
				}
				case "lpll": 
				{
					var letraZ:Shape = new Shape();
					letraZ.graphics.lineStyle(2, 0x000000);					
					letraZ.graphics.lineTo( 20,0);
					letraZ.graphics.moveTo(20,0);
					letraZ.graphics.lineTo(0,20);
					letraZ.graphics.moveTo(0,20);
					letraZ.graphics.lineTo(20, 20);
					letraZ.x = posX;
					letraZ.y = posY;
					addChild(letraZ);				
					trace("Z");
					break;
				}
				case "llpp": 
				{
					break;
				}
				//numeros
				case "lllll": 
				{
					var cero:Shape = new Shape();
					cero.graphics.lineStyle(2, 0x000000);
					cero.graphics.lineTo(20, 0);
					cero.graphics.moveTo(20, 0);
					cero.graphics.lineTo(20, 20);
					cero.graphics.moveTo(20, 20);
					cero.graphics.lineTo(0, 20);
					cero.graphics.moveTo(0, 20);
					cero.graphics.lineTo(0, 0);
					cero.x = posX;
					cero.y = posY;
					addChild(cero);
					trace("0");
					break;
				}
				case "pllll": 
				{
					var uno:Shape = new Shape();
					uno.graphics.lineStyle(2, 0x000000);
					uno.graphics.lineTo(10, 0);
					uno.graphics.moveTo(10, 0);
					uno.graphics.lineTo(10, 20);
					uno.graphics.moveTo(0, 20);
					uno.graphics.lineTo(20, 20);
					uno.x = posX;
					uno.y = posY;
					addChild(uno);					
					trace("1");
					break;
				}
				case "pplll": 
				{
					var dos:Shape = new Shape();
					dos.graphics.lineStyle(2, 0x000000);					
					dos.graphics.lineTo( 20,0);
					dos.graphics.moveTo(20,0);
					dos.graphics.lineTo(20,10);
					dos.graphics.moveTo(20,10);
					dos.graphics.lineTo(0, 10);
					dos.graphics.moveTo(0, 10);
					dos.graphics.lineTo(0, 20);
					dos.graphics.moveTo(0, 20);
					dos.graphics.lineTo(20, 20);
					dos.x = posX;
					dos.y = posY;
					addChild(dos);				
					trace("2");
					break;
				}
				case "pppll": 
				{
					var tres:Shape = new Shape();
					tres.graphics.lineStyle(2, 0x000000);					
					tres.graphics.lineTo( 20,0);
					tres.graphics.moveTo(20,0);
					tres.graphics.lineTo(20,10);
					tres.graphics.moveTo(20,10);
					tres.graphics.lineTo(0, 10);
					tres.graphics.moveTo(20, 10);
					tres.graphics.lineTo(20, 20);
					tres.graphics.moveTo(20, 20);
					tres.graphics.lineTo(0, 20);
					tres.x = posX;
					tres.y = posY;
					addChild(tres);	
					trace("3");
					break;
				}
				case "ppppl": 
				{
					var cuatro:Shape = new Shape();
					cuatro.graphics.lineStyle(2, 0x000000);					
					cuatro.graphics.moveTo(20,0);
					cuatro.graphics.lineTo(20,10);
					cuatro.graphics.moveTo(20,10);
					cuatro.graphics.lineTo(0, 10);
					cuatro.graphics.moveTo(0, 10);
					cuatro.graphics.lineTo(0, 0);
					cuatro.graphics.moveTo(20, 10);
					cuatro.graphics.lineTo(20, 20);
					cuatro.x = posX;
					cuatro.y = posY;
					addChild(cuatro);	
					trace("4");
					break;
				}
				case "ppppp": 
				{
					var cinco:Shape = new Shape();
					cinco.graphics.lineStyle(2, 0x000000);					
					cinco.graphics.moveTo(20,0);
					cinco.graphics.lineTo(0,0);
					cinco.graphics.moveTo(0,0);
					cinco.graphics.lineTo(0, 10);
					cinco.graphics.moveTo(0, 10);
					cinco.graphics.lineTo(20, 10);
					cinco.graphics.moveTo(20, 10);
					cinco.graphics.lineTo(20, 20);
					cinco.graphics.moveTo(20, 20);
					cinco.graphics.lineTo(0, 20);
					cinco.x = posX;
					cinco.y = posY;
					addChild(cinco);	
					trace("5");
					break;
				}
				case "lpppp": 
				{
					var seis:Shape = new Shape();
					seis.graphics.lineStyle(2, 0x000000);					
					seis.graphics.moveTo(20,0);
					seis.graphics.lineTo(0,0);
					seis.graphics.moveTo(0,0);
					seis.graphics.lineTo(0, 10);
					seis.graphics.moveTo(0, 10);
					seis.graphics.lineTo(20, 10);
					seis.graphics.moveTo(20, 10);
					seis.graphics.lineTo(20, 20);
					seis.graphics.moveTo(20, 20);
					seis.graphics.lineTo(0, 20);
					seis.graphics.moveTo(0, 20);
					seis.graphics.lineTo(0, 10);
					seis.x = posX;
					seis.y = posY;
					addChild(seis);	
					trace("6");
					break;
				}
				case "llppp": 
				{
					var siete:Shape = new Shape();
					siete.graphics.lineStyle(2, 0x000000);
					siete.graphics.lineTo(20, 0);
					siete.graphics.moveTo(20, 0);
					siete.graphics.lineTo(10, 20)
					siete.x = posX;
					siete.y = posY;
					addChild(siete);	
					trace("7");
					break;
				}
				case "lllpp": 
				{
					var ocho:Shape = new Shape();
					ocho.graphics.lineStyle(2, 0x000000);
					ocho.graphics.lineTo(20, 0);
					ocho.graphics.moveTo(20, 0);
					ocho.graphics.lineTo(20, 20);
					ocho.graphics.moveTo(20, 20);
					ocho.graphics.lineTo(0, 20);
					ocho.graphics.moveTo(0, 20);
					ocho.graphics.lineTo(0, 0);
					ocho.graphics.moveTo(0, 10);
					ocho.graphics.lineTo(20, 10);
					ocho.x = posX;
					ocho.y = posY;
					addChild(ocho)
					trace("8");
					break;
				}
				case "llllp": 
				{
					var nueve:Shape = new Shape();
					nueve.graphics.lineStyle(2, 0x000000);	
					nueve.graphics.moveTo(0,10);
					nueve.graphics.lineTo(0, 0);
					nueve.graphics.moveTo(0,0);
					nueve.graphics.lineTo( 20,0);
					nueve.graphics.moveTo(20,0);
					nueve.graphics.lineTo(20,10);
					nueve.graphics.moveTo(20,10);
					nueve.graphics.lineTo(0, 10);
					nueve.graphics.moveTo(20, 10);
					nueve.graphics.lineTo(20, 20);
					nueve.graphics.moveTo(20, 20);
					nueve.graphics.lineTo(0, 20);
					nueve.x = posX;
					nueve.y = posY;
					addChild(nueve);	
					trace("9");
					break;
				}		
				default:
				{
					posX -= 25;
					break;
				}
			}
		}
	}
}