<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match="/">
    <html>
        <head>
            <meta charset="UTF-8" />
            <title>Inbentarioa</title>
            <link rel="stylesheet" type="text/css" href="../Erronka%20Web/css.css" />
        </head>
        
        <body>

            <!--Logoa-->
                <img id="logomain"><xsl:attribute name="src">../Erronka%20Web/Irudiak/logomain.png</xsl:attribute></img>

            <!--Tituloa-->
                <div id="burue">
                    <h1>INFORMATIKATLHI SISTEMAK</h1>
                </div><br></br><br></br>

            
            <!--Navbar handia-->
                <div id="normala">
                    <ul>
                        <li>
                            <a id="erdin1" href="../Erronka%20Web/index.html">Sarrera</a>
                        </li>
                        <li>
                            <a href="../Erronka%20Web/non%20gaude.html" id="ezker">Non gaude?</a>
                        </li>
                        <li>
                            <a href="../Erronka%20Web/denda.html" id="esku">Denda</a>
                        </li>
                        <li>
                            <a href="../ENTREGATZEKO - Inbentarioa (ereduarekin)-Mikel_Etxabe/inbentarioa.xml" id="erdin2">Inbentarioa</a>
                        </li>
                    </ul>
                </div>

            <!--Navbar txikia-->
                <div id="txikie" class="dropdown">
                    <img id="Irudie1"><xsl:attribute name="src">../Erronka%20Web/Irudiak/menu.png</xsl:attribute></img>
                        <div class="dropdown-content">
                            <a href="../Erronka%20Web/index.html">Sarrera</a>
                            <a href="../Erronka%20Web/non%20gaude.html">Non Gaude?</a>
                            <a href="../Erronka%20Web/denda.html">Denda</a>
                            <a href="../ENTREGATZEKO - Inbentarioa (ereduarekin)-Mikel_Etxabe/inbentarioa.xml">Inbentarioa</a>
                        </div>
                </div>

                    <div>
                        <!--Dropdown inbentario-->
                            <div id="dropdowninbentario" class="dropdown">
                                <img id="Irudie1"><xsl:attribute name="src">../Erronka%20Web/Irudiak/menu.png</xsl:attribute></img>
                                    <div class="dropdown-content">
                                        <a href="#ordenagailua">Ordenagailuak</a>
                                        <a href="#portatillak">Portatillak</a>
                                        <a href="#zerbitzariak">Zerbitzariak</a>
                                        <a href="#arbeldigitala">Arbel digitala</a>
                                        <a href="#proiektorea">Proiektorea</a>
                                        <a href="#pantaila">Pantaila</a>
                                        <a href="#inprimagailua">Inprimagailua</a>
                                        <a href="#switchak">Switch-ak</a>
                                        <a href="#bideratzailea">Bideratzailea</a>
                                        <a href="#ipkamara">IP kamara</a>
                                    </div>
                            </div>

                            <!--Ordenagailue-->
                            <div id="titulue">
                                <h1 id="ordenagailua">Ordenagailuak</h1>
                            </div>

                            <xsl:for-each select="inbentarioa/ordenagailua">

                                <div id="box1">                      
                                    <xsl:value-of select="@pckodea"/><br></br>
                                </div>

                                <div id="box2">                      
                                    CPU:<xsl:value-of select="CPU"/><br></br><br></br>
                                    Sistema eragilea:<xsl:value-of select="Sistemaeragilea"/><br></br><br></br>
                                    Disko gogorra:<xsl:value-of select="Diskogogorra"/><br></br><br></br>
                                    Txartel grafikoa:<xsl:value-of select="Txartelgrafikoa"/><br></br><br></br>
                                    Modeloa:<xsl:value-of select="Modeloa"/><br></br><br></br>
                                    Urtea:<xsl:value-of select="Urtea"/><br></br><br></br>
                                    RAM memoria1:<xsl:value-of select="Rammemoria"/><br></br>    <br></br> 
                                    <xsl:if test="Rammemoria2">
                                        RAM memoria2:<xsl:value-of select="Rammemoria2"/><br></br>    <br></br>             
                                    </xsl:if>
                                    
                                    Lotutako inprimagailua: <xsl:value-of select="@inpri_lotura"/><br></br><br></br>
                                    Lotutako switch-a: <xsl:value-of select="@switch_lotura"/><br></br><br></br>
                                    Nun erosi: <xsl:value-of select="@nunerosi"/><br></br><br></br>
                                    Noiz erosi: <xsl:value-of select="@noizerosi"/><br></br><br></br>

                                    <img id="pckonponenteak" src="{pc_irudia/@path}"/>
                                </div><br></br>

                            </xsl:for-each>

                            <!--Gora joateko botoia-->
                                <div id="gorabotoia">
                                    <a href="#ordenagailua"><img id="gezia" ><xsl:attribute name="src">./irudiak/gezia.png</xsl:attribute></img></a>
                                </div>

                                <!--Portatillak-->
                            <div id="titulue">
                                <h1 id="portatillak">Portatillak</h1>
                            </div>

                            <xsl:for-each select="inbentarioa/portatilla">

                                <div id="box1">                      
                                    <xsl:value-of select="@port_kodea"/><br></br>
                                </div>

                                <div id="box2">                      
                                    Modeloa:<xsl:value-of select="p_modeloa"/><br></br><br></br>
                                    CPU:<xsl:value-of select="p_cpu"/><br></br><br></br>
                                    Urtea:<xsl:value-of select="p_urtea"/><br></br><br></br>
                                    RAM memoria:<xsl:value-of select="p_rammemoria"/><br></br><br></br>
                                    Disko gogorra:<xsl:value-of select="p_diskogogorra"/><br></br><br></br>
                                    Bateria:<xsl:value-of select="bateria"/><br></br><br></br>
                                    Sistema eragilea:<xsl:value-of select="p_sistemaeragilea"/><br></br><br></br> 
                                    Nun erosi:: <xsl:value-of select="@nunerosi"/><br></br><br></br>
                                    Noiz erosi: <xsl:value-of select="@noizerosi"/><br></br><br></br>

                                    <img id="pckonponenteak" src="{p_irudia/@path}"/>
                                </div>

                            </xsl:for-each>

                            <!--Zerbitzariak-->
                            <div id="titulue">
                                <h1 id="zerbitzariak">Zerbitzariak</h1>
                            </div>

                            <xsl:for-each select="inbentarioa/zerbitzaria">

                                <div id="box1">                      
                                    <xsl:value-of select="@zerb_kodea"/><br></br>
                                </div>

                                <div id="box2">                      
                                    Modeloa:<xsl:value-of select="z_modeloa"/><br></br><br></br>
                                    CPU:<xsl:value-of select="z_cpu"/><br></br><br></br>
                                    RAM memoria:<xsl:value-of select="z_rammemoria"/><br></br><br></br>
                                    Disko gogorra:<xsl:value-of select="z_diskogogorra"/><br></br><br></br>
                                    Sare interfazeak:<xsl:value-of select="z_sareinterfazeak"/><br></br><br></br>
                                    Urtea:<xsl:value-of select="z_urtea"/><br></br><br></br> 
                                    IP helbidea:<xsl:value-of select="ip_helbidea"/><br></br><br></br> 
                                    Nun erosi:: <xsl:value-of select="@nunerosi"/><br></br><br></br>
                                    Noiz erosi: <xsl:value-of select="@noizerosi"/><br></br><br></br>

                                    <img id="pckonponenteak" src="{z_irudia/@path}"/>                                
                                </div>
                            </xsl:for-each>

                            <!--Arbel digitala-->
                            <div id="titulue">
                                <h1 id="arbeldigitala">Arbel digitala</h1>
                            </div>

                            <xsl:for-each select="inbentarioa/periferikoak/arbeldigitala">

                                    <div id="box1">                      
                                        <xsl:value-of select="@arbel01"/><br></br>
                                    </div>

                                    <div id="box2">                      
                                        Modeloa:<xsl:value-of select="arbel_modeloa"/><br></br><br></br>
                                        Prezioa:<xsl:value-of select="arbel_prezioa"/><br></br><br></br>
                                        Nun erosi:: <xsl:value-of select="@nunerosi"/><br></br><br></br>
                                        Noiz erosi: <xsl:value-of select="@noizerosi"/><br></br><br></br>
                                        <img id="pckonponenteak" src="{arbel_irudia/@path}"/> 
                                    </div>

                            </xsl:for-each>

                            <!--Proiekturea-->
                            <div id="titulue">
                                <h1 id="proiektorea">Proiektorea</h1>
                            </div>
                            <xsl:for-each select="inbentarioa/periferikoak/proiektorea">

                                <div id="box1">                      
                                    <xsl:value-of select="@proiek_kodea"/><br></br>
                                </div>

                                <div id="box2">    
                                    Modeloa:<xsl:value-of select="proiektore_modeloa"/><br></br><br></br>                  
                                    Prezioa:<xsl:value-of select="proiektore_prezioa"/><br></br><br></br>
                                    Nun erosi:: <xsl:value-of select="@nunerosi"/><br></br><br></br>
                                    Noiz erosi: <xsl:value-of select="@noizerosi"/><br></br><br></br>
                                    <img id="pckonponenteak" src="{proiektore_irudia/@path}"/>                                
                                </div>

                            </xsl:for-each>


                            <!--Pantaila-->
                            <div id="titulue">
                                <h1 id="pantaila">Pantaila</h1>
                            </div>

                            <xsl:for-each select="inbentarioa/periferikoak/pantaila">

                                <div id="box1">                      
                                    <xsl:value-of select="@pant_kodea"/><br></br>
                                </div>

                                <div id="box2">    
                                    Modeloa:<xsl:value-of select="pantaila_modeloa"/><br></br><br></br>
                                    Pulgadak:<xsl:value-of select="pulgadak"/><br></br><br></br>                  
                                    Prezioa:<xsl:value-of select="pantaila_prezioa"/><br></br><br></br>   
                                    Lotutako ordenagailua: <xsl:value-of select="@pclotura"/><br></br><br></br> 
                                    Nun erosi:: <xsl:value-of select="@nunerosi"/><br></br><br></br>
                                    Noiz erosi: <xsl:value-of select="@noizerosi"/><br></br><br></br>  
                                    <img id="pckonponenteak" src="{irudia/@path}"/>
                                </div>

                            </xsl:for-each>

                            <!--inprimagailua-->
                            <div id="titulue">
                                <h1 id="inprimagailua">Inprimigailua</h1>
                            </div>

                            <xsl:for-each select="inbentarioa/periferikoak/inprimagailua">

                                <div id="box1">                      
                                    <xsl:value-of select="@inpri_kodea"/><br></br>
                                </div>

                                <div id="box2">    
                                    Urtea:<xsl:value-of select="inprimagailua_urtea"/><br></br><br></br>
                                    Modeloa:<xsl:value-of select="inprimagailua_modeloa"/><br></br><br></br>                  
                                    Prezioa:<xsl:value-of select="inprimagailua_prezioa"/><br></br><br></br>   
                                    Lotutako ordenagailua: <xsl:value-of select="@pclotura"/><br></br><br></br>  
                                    Nun erosi:: <xsl:value-of select="@nunerosi"/><br></br><br></br>
                                    Noiz erosi: <xsl:value-of select="@noizerosi"/><br></br><br></br> 
                                    <img id="pckonponenteak" src="{inprimagailua_irudia/@path}"/>
                                </div>

                            </xsl:for-each>

                            <!--Switch-ak-->
                            <div id="titulue">
                                <h1 id="switchak">Switch-ak</h1>
                            </div>

                            <xsl:for-each select="inbentarioa/sareekipamendua/switch">

                                <div id="box1">                      
                                    <xsl:value-of select="@switch_kodea"/><br></br>
                                </div>

                                <div id="box2">    
                                    Modeloa:<xsl:value-of select="switch_modeloa"/><br></br><br></br>
                                    Portuak:<xsl:value-of select="switch_portuak"/><br></br><br></br>                  
                                    Prezioa:<xsl:value-of select="switch_prezioa"/><br></br><br></br>
                                    Nun erosi:: <xsl:value-of select="@nunerosi"/><br></br><br></br>
                                    Noiz erosi: <xsl:value-of select="@noizerosi"/><br></br><br></br>   
                                    <img id="pckonponenteak" src="{switch_irudia/@path}"/>
                                </div>

                            </xsl:for-each>

                            <!--Bideratzailea-->
                            <div id="titulue">
                                <h1 id="bideratzailea">Bideratzailea</h1>
                            </div>

                            <xsl:for-each select="inbentarioa/sareekipamendua/bideratzailea">

                                <div id="box1">                      
                                    <xsl:value-of select="@bidera_kodea"/><br></br>
                                </div>

                                <div id="box2">    
                                    Modeloa:<xsl:value-of select="bideratzailea_modeloa"/><br></br><br></br>
                                    Estandarra:<xsl:value-of select="bideratzailea_estandarra"/><br></br><br></br>                  
                                    Prezioa:<xsl:value-of select="bideratzailea_prezioa"/><br></br><br></br>
                                    Nun erosi:: <xsl:value-of select="@nunerosi"/><br></br><br></br>
                                    Noiz erosi: <xsl:value-of select="@noizerosi"/><br></br><br></br>   
                                    <img id="pckonponenteak" src="{bideratzailea_irudia/@path}"/>
                                </div>

                            </xsl:for-each>

                            <!--IP kamara-->
                            <div id="titulue">
                                <h1 id="ipkamara">IP kamara</h1>
                            </div>

                            <xsl:for-each select="inbentarioa/sareekipamendua/ipkamera">

                                <div id="box1">                      
                                    <xsl:value-of select="@ipkam_kodea"/><br></br>
                                </div>

                                <div id="box2">    
                                    Modeloa:<xsl:value-of select="ipkamera_modeloa"/><br></br><br></br>
                                    Prezioa:<xsl:value-of select="ipkamera_prezioa"/><br></br><br></br>
                                    Nun erosi:: <xsl:value-of select="@nunerosi"/><br></br><br></br>
                                    Noiz erosi: <xsl:value-of select="@noizerosi"/><br></br><br></br>   
                                    <img id="pckonponenteak" src="{ipkamera_irudia/@path}"/>
                                </div>

                            </xsl:for-each>
                            
                    </div>
            

                </body>
    </html>
</xsl:template>
</xsl:stylesheet>