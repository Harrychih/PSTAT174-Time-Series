<!-- Test for IMA(1,16): -->
  <!-- ```{r} -->
  <!-- mod1 <- arima(MSPUSt.bc,order = c(0,1,16),method = "ML") -->
    <!-- mod1 -->
    <!-- ``` -->
    <!-- ```{r} -->
    <!-- AICc(mod1) ## 792.6018 -->
  <!-- ``` -->
    
    <!-- Test for ARI(1,1) -->
    <!-- ```{r} -->
    <!-- mod_a <- arima(MSPUSt.bc,order = c(1,1,0),method = "ML") -->
      <!-- mod_a -->
      <!-- ``` -->
      <!-- ```{r} -->
      <!-- AICc(mod_a) ## 821.2437 -->
    <!-- ``` -->
      
      
      
      <!-- Test for ARI(4,1) -->
      <!-- ```{r} -->
      <!-- mod2 <- arima(MSPUSt.bc,order = c(4,1,0),method = "ML") -->
        <!-- mod2 -->
        <!-- ``` -->
        <!-- ```{r} -->
        <!-- AICc(mod2) ## 782.28 -->
      <!-- ``` -->
        
        <!-- Test for ARIMA(1,1,1) -->
        <!-- ```{r} -->
        <!-- mod3 <- arima(MSPUSt.bc,order = c(1,1,1),method = "ML", optim.control = list(maxit = 1000) ) -->
          <!-- mod3 -->
          <!-- ``` -->
          <!-- ```{r} -->
          <!-- AICc(mod3) # 822.7387 -->
        <!-- ``` -->
          
          <!-- Test for ARIMA(1,1,8) -> (1,1,4) -->
          <!-- ```{r} -->
          <!-- mod3 <- arima(MSPUSt.bc,order = c(1,1,4),method = "ML", optim.control = list(maxit = 1000) ) -->
            <!-- mod3 -->
            <!-- ``` -->
            <!-- ```{r} -->
            <!-- AICc(mod3) ##772.0756 -->
          <!-- ``` -->
            <!-- ```{r} -->
            <!-- # Revised Model -->
            <!-- mod3_rev <- arima(MSPUSt.bc, order = c(1,1,4), -->
                                     <!--                   fixed = c(NA,NA,NA,0,NA), -->
                                     <!--                   #transform.pars = FALSE, -->
                                     <!--                   #optim.control = list(maxit = 1000), -->
                                     <!--                   method = "ML") -->
              <!-- mod3_rev -->
              <!-- ``` -->
              <!-- ```{r} -->
              <!-- AICc(mod3_rev) #771.455 -->
            <!-- ``` -->
              
              
              <!-- Test for ARIMA(4,1,1) -> ARIMA(3,1,1) -->
              <!-- ```{r} -->
              <!-- mod4 <- arima(MSPUSt.bc,order = c(3,1,1),method = "ML", optim.control = list(maxit = 1000) ) -->
                <!-- mod4 -->
                <!-- ``` -->
                <!-- ```{r} -->
                <!-- AICc(mod4) ##775.1979 -->
              <!-- ``` -->
                
                
                <!-- Test for ARIMA(4,1,8) -> AROMA(4,1,7) -->
                <!-- ```{r} -->
                <!-- mod6 <- arima(MSPUSt.bc,order = c(4,1,7),method = "ML") #, optim.control = list(maxit = 1000) -->
                <!-- mod6 -->
                  <!-- ``` -->
                  <!-- ```{r} -->
                  <!-- AICc(mod6) #771.6711 -->
                <!-- ``` -->
                  <!-- ```{r} -->
                  <!-- # Revised Model -->
                  <!-- mod6_rev <- arima(MSPUSt.bc, order = c(4,1,7), -->
                                           <!--                   fixed = c(NA,NA,NA,NA,0,0,0,NA,NA,NA,NA), -->
                                           <!--                   #transform.pars = FALSE, -->
                                           <!--                   #optim.control = list(maxit = 1000), -->
                                           <!--                   method = "ML") -->
                    <!-- mod6_rev -->
                    <!-- ``` -->
                    <!-- ```{r} -->
                    <!-- AICc(mod6_rev) #764.6242 -->
                  <!-- ``` -->
                    
                    <!-- The model is -->
                    <!-- (1-0.1879B + 0.037B^2 + 0.1879B^3 + 0.9626B^4)∇1bc(Ut) = (1-0.8576B^4+0.2552B^5-0.1187B^6-0.2465B^7)Zt -->
                      <!-- sigma(z)^2 = 3.901 -->
                        
                        <!-- Test for ARIMA(4,1,16) -->
                        <!-- ```{r} -->
                        <!-- mod4 <- arima(MSPUSt.bc,order = c(4,1,16),method = "ML") -->
                          <!-- mod4 -->
                          <!-- ``` -->
                          <!-- ```{r} -->
                          <!-- n4 = mod4$nobs -->
                            <!-- p4 = length(mod4$coef) -->
                              <!-- mod4_AICc <- mod4$aic + 2*p4*(p4+1)/(n4-p4-1) -->
                                <!-- mod4_AICc -->
                                <!-- ``` -->
                                
                                <!-- ```{r} -->
                                <!-- # Revised Model -->
                                <!-- mod4_rev <- arima(MSPUSt.bc,order = c(4,1,16), -->
                                                         <!--                   fixed=c(0,0,0,NA,NA,0,NA,NA,NA,0,0,0,0,0,0,0,0,NA,0,0), -->
                                                         <!--                   transform.pars = FALSE, -->
                                                         <!--                   method = "ML") -->
                                  <!-- mod4 -->
                                  <!-- ``` -->
                                  
                                  
                                  # ```{r}
                                  # library(forecast)
                                  # ```
                                  # ```{r}
                                  # mod_auto <- auto.arima(MSPUSt.bc, ic="aicc", allowdrift=FALSE)
                                  # mod_auto
                                  # ```
                                  # ```{r}
                                  # AICc(mod_auto) # 775.6714
                                # ```