module TrackingsheetsHelper
  
   
  
  ###---------------------------------------Factory----------------------------------------------### 
   
   def factory(factory)
     if current_user.userrole=='admin'
       
     text_field_tag('trackingsheet[factory]',factory,class:"span20",placeholder:"Factory")  
     
     else if current_user.userrole=='operations'
     text_field_tag('trackingsheet[factory]',factory,class:"span20",placeholder:"Factory")     
     return true
     else if current_user.userrole=='sales'
       return false
     label_tag(:factory,factory,class:"span20") 
     
     else if current_user.userrole=='designer'
     text_field_tag('trackingsheet[factory]',factory,class:"span20",placeholder:"Factory")     
     return true
     else if current_user.userrole=='vendor'
     text_field_tag('trackingsheet[factory]',factory,class:"span20",placeholder:"Factory")    
     return true 
     end #vendors
     end #designers
     end #sales
     end #operations 
     end #admin
   end   
   
   ###---------------------------------------Subcontarctor----------------------------------------------### 
   
    def subcontractor(subcontractor)
      if current_user.userrole=='admin'
      text_field_tag('trackingsheet[subcontractor]',subcontractor,class:"span20")  
      else if current_user.userrole=='operations'
      label_tag(:subcontractor,subcontractor,class:"span20")    
      else if current_user.userrole=='sales'
      label_tag(:subcontractor,subcontractor,class:"span20 lblcolor") 
      else if current_user.userrole=='designer'
      label_tag(:subcontractor,subcontractor,class:"span20")     
      else if current_user.userrole=='vendor'
      text_field_tag('trackingsheettrackingsheet[subcontractor]',subcontractor,class:"span20",placeholder:"Subcontractor")     
      end #vendors
      end #designers
      end #sales
      end #operations 
      end #admin
    end    
    
    ###---------------------------------------Customername----------------------------------------------### 
   
     def customername(customername)
       if current_user.userrole=='admin'
       text_field_tag('trackingsheet[customername]',customername,class:"span20",placeholder:"Customer Name")  
       else if current_user.userrole=='operations'
       text_field_tag('trackingsheet[customername]',customername,class:"span20",placeholder:"Customer Name")     
       else if current_user.userrole=='sales'
       label_tag(:customername,customername,class:"span20") 
       else if current_user.userrole=='designer'
       text_field_tag('trackingsheet[customername]',customername,class:"span20",placeholder:"Customer Name")     
       else if current_user.userrole=='vendor'
       label_tag(:customername,customername,class:"span20")   
       end #vendors
       end #designers
       end #sales
       end #operations 
       end #admin
     end     
     
     ###---------------------------------------Customeraccount----------------------------------------------### 
   
      def customeraccount(customeraccount)
        if current_user.userrole=='admin'
        text_field_tag('trackingsheet[customeraccount]',customeraccount,class:"span20",placeholder:"Customer Account")  
        else if current_user.userrole=='operations'
        text_field_tag('trackingsheet[customeraccount]',customeraccount,class:"span20",placeholder:"Customer Account")     
        else if current_user.userrole=='sales'
        label_tag(:customeraccount,customeraccount,class:"span20") 
        else if current_user.userrole=='designer'
        text_field_tag('trackingsheet[customeraccount]',customeraccount,class:"span20",placeholder:"Customer Account")     
        else if current_user.userrole=='vendor'
        label_tag(:customeraccount,customeraccount,class:"span20")   
        end #vendors
        end #designers
        end #sales
        end #operations 
        end #admin
      end   
      
      ###---------------------------------------Project----------------------------------------------### 
   
       def project(project)
         if current_user.userrole=='admin'
         text_field_tag('trackingsheet[project]',project,class:"span20",placeholder:"Project")  
         else if current_user.userrole=='operations'
         text_field_tag('trackingsheet[project]',project,class:"span20",placeholder:"Project")     
         else if current_user.userrole=='sales'
         label_tag(:project,project,class:"span20") 
         else if current_user.userrole=='designer'
         text_field_tag('trackingsheet[project]',project,class:"span20",placeholder:"Project")     
         else if current_user.userrole=='vendor'
         label_tag(:project,project,class:"span20")   
         end #vendors
         end #designers
         end #sales
         end #operations 
         end #admin
       end             
       
       ###---------------------------------------Reference Style----------------------------------------------### 
   
        def referncestyle(referncestyle)
          if current_user.userrole=='admin'
          text_field_tag('trackingsheet[referncestyle]',referncestyle,class:"span20",placeholder:"Reference Style")  
          else if current_user.userrole=='operations'
          text_field_tag('trackingsheet[referncestyle]',referncestyle,class:"span20",placeholder:"Reference Style")     
          else if current_user.userrole=='sales'
          label_tag(:referncestyle,referncestyle,class:"span20") 
          else if current_user.userrole=='designer'
          text_field_tag('trackingsheet[referncestyle]',referncestyle,class:"span20",placeholder:"Reference Style")     
          else if current_user.userrole=='vendor'
          label_tag(:referncestyle,referncestyle,class:"span20")   
          end #vendors
          end #designers
          end #sales
          end #operations 
          end #admin
        end    
        
        ###---------------------------------------X Mill Date----------------------------------------------### 
   
         def xmilldate(xmilldate)
           if current_user.userrole=='admin'
           text_field_tag('trackingsheet[xmilldate]',xmilldate,class:"span20",placeholder:"X Mill Date")  
           else if current_user.userrole=='operations'
           label_tag(:xmilldate,xmilldate,class:"span20")    
           else if current_user.userrole=='sales'
           label_tag(:xmilldate,xmilldate,class:"span20") 
           else if current_user.userrole=='designer'
           label_tag(:xmilldate,xmilldate,class:"span20") 
           else if current_user.userrole=='vendor'
           text_field_tag('trackingsheet[xmilldate]',xmilldate,class:"span20",placeholder:"X Mill Date")    
           end #vendors
           end #designers
           end #sales
           end #operations 
           end #admin
         end           
         
         ###---------------------------------------Production Lead Time----------------------------------------------### 
   
          def productionleadtime(productionleadtime)
            if current_user.userrole=='admin'
            text_field_tag('trackingsheet[productionleadtime]',productionleadtime,class:"span20",placeholder:"Production Lead Time")  
            else if current_user.userrole=='operations'
            label_tag(:productionleadtime,productionleadtime,class:"span20")    
            else if current_user.userrole=='sales'
            label_tag(:productionleadtime,productionleadtime,class:"span20") 
            else if current_user.userrole=='designer'
            label_tag(:productionleadtime,productionleadtime,class:"span20") 
            else if current_user.userrole=='vendor'
            text_field_tag('trackingsheet[productionleadtime]',productionleadtime,class:"span20",placeholder:"Production Lead Time")    
            end #vendors
            end #designers
            end #sales
            end #operations 
            end #admin
          end      
          
          ###---------------------------------------Sales Proceeds to Sample Request--------------------------------------------### 
   
           def salesproceedtosamplerequest(salesproceedtosamplerequest)
             if current_user.userrole=='admin'
             text_field_tag('trackingsheet[salesproceedtosamplerequest]',salesproceedtosamplerequest,class:"span20",placeholder:"Sales Proceeds to Sample Request")  
             else if current_user.userrole=='operations'
             label_tag(:salesproceedtosamplerequest,salesproceedtosamplerequest,class:"span20")    
             else if current_user.userrole=='sales'
             text_field_tag('trackingsheet[salesproceedtosamplerequest]',salesproceedtosamplerequest,class:"span20",placeholder:"Sales Proceeds to Sample Request")
             else if current_user.userrole=='designer'
             label_tag(:salesproceedtosamplerequest,salesproceedtosamplerequest,class:"span20") 
             else if current_user.userrole=='vendor'
             label_tag(:salesproceedtosamplerequest,salesproceedtosamplerequest,class:"span20") 
             end #vendors
             end #designers
             end #sales
             end #operations 
             end #admin
           end                         

         ###---------------------------------------Proto Due Back From Vendor--------------------------------------------### 
 
          def protoduebackfromvendor(protoduebackfromvendor)
            if current_user.userrole=='admin'
            text_field_tag('trackingsheet[protoduebackfromvendor]',protoduebackfromvendor,class:"span20",placeholder:"Proto Due Back From Vendor")  
            else if current_user.userrole=='operations'
            text_field_tag('trackingsheet[protoduebackfromvendor]',protoduebackfromvendor,class:"span20",placeholder:"Proto Due Back From Vendor")    
            else if current_user.userrole=='sales'
            label_tag(:protoduebackfromvendor,protoduebackfromvendor,class:"span20") 
            else if current_user.userrole=='designer'
            label_tag(:protoduebackfromvendor,protoduebackfromvendor,class:"span20") 
            else if current_user.userrole=='vendor'
            label_tag(:protoduebackfromvendor,protoduebackfromvendor,class:"span20") 
            end #vendors
            end #designers
            end #sales
            end #operations 
            end #admin
          end   
          
        ###---------------------------------------DAF to Vendor Date--------------------------------------------### 

         def daftovendordate(daftovendordate)
           if current_user.userrole=='admin'
           text_field_tag('trackingsheet[daftovendordate]',daftovendordate,class:"span20",placeholder:"DAF to Vendor Date")  
           else if current_user.userrole=='operations'
           text_field_tag('trackingsheet[daftovendordate]',daftovendordate,class:"span20",placeholder:"DAF to Vendor Date")    
           else if current_user.userrole=='sales'
           label_tag(:daftovendordate,daftovendordate,class:"span20") 
           else if current_user.userrole=='designer'
           label_tag(:daftovendordate,daftovendordate,class:"span20") 
           else if current_user.userrole=='vendor'
           label_tag(:daftovendordate,daftovendordate,class:"span20") 
           end #vendors
           end #designers
           end #sales
           end #operations 
           end #admin
         end                        
   
         ###---------------------------------------Comments--------------------------------------------### 

         # def comments(comments)
					#	text_area 'trackingsheet[comments]',comments, class:"span20",placeholder:"Comments",cols:"42", rows:"3"
        #  end   

        ###---------------------------------------RTL MU--------------------------------------------### 

         def rtlmu(rtlmu)
           if current_user.userrole=='admin'
           text_field_tag('trackingsheet[rtlmu]',rtlmu,class:"span20",placeholder:"RTL MU")  
           else if current_user.userrole=='operations'
           text_field_tag('trackingsheet[rtlmu]',rtlmu,class:"span20",placeholder:"RTL MU")    
           else if current_user.userrole=='sales'
           label_tag(:rtlmu,rtlmu,class:"span20")   
           else if current_user.userrole=='designer'
           label_tag(:rtlmu,rtlmu,class:"span20")   
           else if current_user.userrole=='vendor'
           label_tag(:rtlmu,rtlmu,class:"span20") 
           end #vendors
           end #designers
           end #sales
           end #operations 
           end #admin
         end     
         
         ###---------------------------------------MK UP--------------------------------------------### 

          def mkup(mkup)
            if current_user.userrole=='admin'
            text_field_tag('trackingsheet[mkup]',mkup,class:"span20",placeholder:"MK UP")  
            else if current_user.userrole=='operations'
            text_field_tag('trackingsheet[mkup]',mkup,class:"span20",placeholder:"MK UP")    
            else if current_user.userrole=='sales'
            label_tag(:mkup,mkup,class:"span20")   
            else if current_user.userrole=='designer'
            label_tag(:mkup,mkup,class:"span20")   
            else if current_user.userrole=='vendor'
            label_tag(:mkup,mkup,class:"span20") 
            end #vendors
            end #designers
            end #sales
            end #operations 
            end #admin
          end            
   
          ####### General Tab Ends ######
          
          
          
          ####### Sales Enters Tab Starts ######
          
          ###---------------------------------------Projected Units--------------------------------------------### 

           def projectedunits(projectedunits)
             if current_user.userrole=='admin'
             text_field_tag('trackingsheet[projectedunits]',projectedunits,class:"span20",placeholder:"Projected Units")  
             else if current_user.userrole=='operations'
             label_tag(:projectedunits,projectedunits,class:"span20")  
             else if current_user.userrole=='sales'
              text_field_tag('trackingsheet[projectedunits]',projectedunits,class:"span20",placeholder:"Projected Units")  
             else if current_user.userrole=='designer'
             label_tag(:projectedunits,projectedunits,class:"span20")   
             else if current_user.userrole=='vendor'
             label_tag(:projectedunits,projectedunits,class:"span20") 
             end #vendors
             end #designers
             end #sales
             end #operations 
             end #admin
           end   
           
           ###---------------------------------------Target FOB--------------------------------------------### 

            def targetfob(targetfob)
              if current_user.userrole=='admin'
              text_field_tag('trackingsheet[targetfob]',targetfob,class:"span20",placeholder:"Target FOB")  
              else if current_user.userrole=='operations'
              label_tag(:targetfob,targetfob,class:"span20")  
              else if current_user.userrole=='sales'
               text_field_tag('trackingsheet[targetfob]',targetfob,class:"span20",placeholder:"Target FOB")  
              else if current_user.userrole=='designer'
              label_tag(:targetfob,targetfob,class:"span20")   
              else if current_user.userrole=='vendor'
              label_tag(:targetfob,targetfob,class:"span20") 
              end #vendors
              end #designers
              end #sales
              end #operations 
              end #admin
            end
            
            ###---------------------------------------Target MU--------------------------------------------### 

             def targetmu(targetmu)
               if current_user.userrole=='admin'
               text_field_tag('trackingsheet[targetmu]',targetmu,class:"span20",placeholder:"Target MU")  
               else if current_user.userrole=='operations'
               label_tag(:targetmu,targetmu,class:"span20")  
               else if current_user.userrole=='sales'
                text_field_tag('trackingsheet[targetmu]',targetmu,class:"span20",placeholder:"Target MU")  
               else if current_user.userrole=='designer'
               label_tag(:targetmu,targetmu,class:"span20")   
               else if current_user.userrole=='vendor'
               label_tag(:targetmu,targetmu,class:"span20") 
               end #vendors
               end #designers
               end #sales
               end #operations 
               end #admin
             end   
             
             ###---------------------------------------Target WS--------------------------------------------### 

              def targetws(targetws)
                if current_user.userrole=='admin'
                text_field_tag('trackingsheet[targetws]',targetws,class:"span20",placeholder:"Target MU")  
                else if current_user.userrole=='operations'
                label_tag(:targetws,targetws,class:"span20")  
                else if current_user.userrole=='sales'
                 text_field_tag('trackingsheet[targetws]',targetws,class:"span20",placeholder:"Target MU")  
                else if current_user.userrole=='designer'
                label_tag(:targetws,targetws,class:"span20")   
                else if current_user.userrole=='vendor'
                label_tag(:targetws,targetws,class:"span20") 
                end #vendors
                end #designers
                end #sales
                end #operations 
                end #admin
              end  
          
          
          ####### Sales Enters Tab Ends ######
          
          ####### Minimum MOQ Tab Starts ######
          ###---------------------------------------Per Color--------------------------------------------### 

           def percolor(percolor)
             if current_user.userrole=='admin'
             text_field_tag('trackingsheet[percolor]',percolor,class:"span20",placeholder:"Per Color")  
             else if current_user.userrole=='operations'
             label_tag(:percolor,percolor,class:"span20")  
             else if current_user.userrole=='sales'
             label_tag(:percolor,percolor,class:"span20") 
             else if current_user.userrole=='designer'
             label_tag(:percolor,percolor,class:"span20")   
             else if current_user.userrole=='vendor'
             text_field_tag('trackingsheet[percolor]',percolor,class:"span20",placeholder:"Per Color")  
             end #vendors
             end #designers
             end #sales
             end #operations 
             end #admin
           end
           
           ###---------------------------------------Per Style--------------------------------------------### 

            def perstyle(perstyle)
              if current_user.userrole=='admin'
              text_field_tag('trackingsheet[perstyle]',perstyle,class:"span20",placeholder:"Per Style")  
              else if current_user.userrole=='operations'
              label_tag(:perstyle,perstyle,class:"span20")  
              else if current_user.userrole=='sales'
              label_tag(:perstyle,perstyle,class:"span20") 
              else if current_user.userrole=='designer'
              label_tag(:perstyle,perstyle,class:"span20")   
              else if current_user.userrole=='vendor'
              text_field_tag('trackingsheet[perstyle]',perstyle,class:"span20",placeholder:"Per Style")  
              end #vendors
              end #designers
              end #sales
              end #operations 
              end #admin
            end
            
            ###---------------------------------------Incoterms--------------------------------------------### 

             def incoterms(incoterms)
               if current_user.userrole=='admin'
               text_field_tag('trackingsheet[incoterms]',incoterms,class:"span20",placeholder:"Incoterms")  
               else if current_user.userrole=='operations'
               label_tag(:incoterms,incoterms,class:"span20")  
               else if current_user.userrole=='sales'
               label_tag(:incoterms,incoterms,class:"span20") 
               else if current_user.userrole=='designer'
               label_tag(:incoterms,incoterms,class:"span20")   
               else if current_user.userrole=='vendor'
               text_field_tag('trackingsheet[incoterms]',incoterms,class:"span20",placeholder:"Incoterms")  
               end #vendors
               end #designers
               end #sales
               end #operations 
               end #admin
             end    
              
          ####### Minimum MOQ Tab Ends ######
          
          ####### First Cost Per Style Tab Starts ###### 
          ###---------------------------------------MOQ--------------------------------------------### 

           def moq(moq)
             if current_user.userrole=='admin'
             text_field_tag('trackingsheet[moq]',moq,class:"span20",placeholder:"MOQ")  
             else if current_user.userrole=='operations'
             label_tag(:moq,moq,class:"span20")  
             else if current_user.userrole=='sales'
             label_tag(:moq,moq,class:"span20") 
             else if current_user.userrole=='designer'
             label_tag(:moq,moq,class:"span20")   
             else if current_user.userrole=='vendor'
             text_field_tag('trackingsheet[moq]',moq,class:"span20",placeholder:"moq")  
             end #vendors
             end #designers
             end #sales
             end #operations 
             end #admin
           end 
           
           ###---------------------------------------1000 - 5000 PCS--------------------------------------------### 

            def thousandtofivethousandPCS(thousandtofivethousandPCS)
              if current_user.userrole=='admin'
              text_field_tag('trackingsheet[thousandtofivethousandPCS]',thousandtofivethousandPCS,class:"span20",placeholder:"1000 - 5000 PCS")  
              else if current_user.userrole=='operations'
              label_tag(:thousandtofivethousandPCS,thousandtofivethousandPCS,class:"span20")  
              else if current_user.userrole=='sales'
              label_tag(:thousandtofivethousandPCS,thousandtofivethousandPCS,class:"span20") 
              else if current_user.userrole=='designer'
              label_tag(:thousandtofivethousandPCS,thousandtofivethousandPCS,class:"span20")   
              else if current_user.userrole=='vendor'
              text_field_tag('trackingsheet[thousandtofivethousandPCS]',thousandtofivethousandPCS,class:"span20",placeholder:"1000 - 5000 PCS")  
              end #vendors
              end #designers
              end #sales
              end #operations 
              end #admin
            end 
            
            ###---------------------------------------5000 - 10,000 PCS--------------------------------------------### 

             def fivethousandtotenthousandPCS(fivethousandtotenthousandPCS)
               if current_user.userrole=='admin'
               text_field_tag('trackingsheet[fivethousandtotenthousandPCS]',fivethousandtotenthousandPCS,class:"span20",placeholder:"5000 - 10,000 PCS")  
               else if current_user.userrole=='operations'
               label_tag(:fivethousandtotenthousandPCS,fivethousandtotenthousandPCS,class:"span20")  
               else if current_user.userrole=='sales'
               label_tag(:fivethousandtotenthousandPCS,fivethousandtotenthousandPCS,class:"span20") 
               else if current_user.userrole=='designer'
               label_tag(:fivethousandtotenthousandPCS,fivethousandtotenthousandPCS,class:"span20")   
               else if current_user.userrole=='vendor'
               text_field_tag('trackingsheet[fivethousandtotenthousandPCS]',fivethousandtotenthousandPCS,class:"span20",placeholder:"5000 - 10,000 PCS")  
               end #vendors
               end #designers
               end #sales
               end #operations 
               end #admin
             end   
          
          ####### First Cost Per Style Tab Starts ######
          
          ####### LDP Boat Tab Starts ######
          
          ###---------------------------------------LDP Boat--------------------------------------------### 

           def ldpboat(ldpboat)
             if current_user.userrole=='admin'
             text_field_tag('trackingsheet[ldpboat]',ldpboat,class:"span20",placeholder:"LDP Boat")  
             else if current_user.userrole=='operations'
             text_field_tag('trackingsheet[ldpboat]',ldpboat,class:"span20",placeholder:"LDP Boat")  
             else if current_user.userrole=='sales'
             label_tag(ldpboat,ldpboat,class:"span20") 
             else if current_user.userrole=='designer'
             label_tag(ldpboat,ldpboat,class:"span20")   
             else if current_user.userrole=='vendor'
             label_tag(ldpboat,ldpboat,class:"span20") 
             end #vendors
             end #designers
             end #sales
             end #operations 
             end #admin
           end  
           
           ###---------------------------------------LDP Air--------------------------------------------### 

            def ldpair(ldpair)
              if current_user.userrole=='admin'
              text_field_tag('trackingsheet[ldpair]',ldpair,class:"span20",placeholder:"LDP Air")  
              else if current_user.userrole=='operations'
              text_field_tag('trackingsheet[ldpair]',ldpair,class:"span20",placeholder:"LDP Air")  
              else if current_user.userrole=='sales'
              label_tag(ldpair,ldpair,class:"span20") 
              else if current_user.userrole=='designer'
              label_tag(ldpair,ldpair,class:"span20")   
              else if current_user.userrole=='vendor'
              label_tag(ldpair,ldpair,class:"span20") 
              end #vendors
              end #designers
              end #sales
              end #operations 
              end #admin
            end  
          
          ####### LDP Boat Tab Starts ######
          
          
          ####### Customer Delivery Tab Starts ######
          ###---------------------------------------Start Ship Date--------------------------------------------### 

           def startshipdate(startshipdate)
             if current_user.userrole=='admin'
             text_field_tag('trackingsheet[startshipdate]',startshipdate,class:"span20",placeholder:"Start Ship Date")  
             else if current_user.userrole=='operations'
             label_tag(startshipdate,startshipdate,class:"span20") 
             else if current_user.userrole=='sales'
             text_field_tag('trackingsheet[startshipdate]',startshipdate,class:"span20",placeholder:"Start Ship Date")
             else if current_user.userrole=='designer'
             label_tag(startshipdate,startshipdate,class:"span20")   
             else if current_user.userrole=='vendor'
             label_tag(startshipdate,startshipdate,class:"span20") 
             end #vendors
             end #designers
             end #sales
             end #operations 
             end #admin
           end
           
           ###---------------------------------------Order Due Date Via Boat--------------------------------------------### 

            def orderduedateviaboat(orderduedateviaboat)
              if current_user.userrole=='admin'
              text_field_tag('trackingsheet[orderduedateviaboat]',orderduedateviaboat,class:"span20",placeholder:"Order Due Date Via Boat")  
              else if current_user.userrole=='operations'
              label_tag(orderduedateviaboat,orderduedateviaboat,class:"span20") 
              else if current_user.userrole=='sales'
              text_field_tag('trackingsheet[orderduedateviaboat]',orderduedateviaboat,class:"span20",placeholder:"Order Due Date Via Boat")
              else if current_user.userrole=='designer'
              label_tag(orderduedateviaboat,orderduedateviaboat,class:"span20")   
              else if current_user.userrole=='vendor'
              label_tag(orderduedateviaboat,orderduedateviaboat,class:"span20") 
              end #vendors
              end #designers
              end #sales
              end #operations 
              end #admin
            end 
            
            ###---------------------------------------Order Due Date Via Air--------------------------------------------### 

             def orderduedateviaair(orderduedateviaair)
               if current_user.userrole=='admin'
               text_field_tag('trackingsheet[orderduedateviaair]',orderduedateviaair,class:"span20",placeholder:"Order Due Date Via Air")  
               else if current_user.userrole=='operations'
               label_tag(orderduedateviaair,orderduedateviaair,class:"span20") 
               else if current_user.userrole=='sales'
               text_field_tag('trackingsheet[orderduedateviaair]',orderduedateviaair,class:"span20",placeholder:"Order Due Date Via Air")
               else if current_user.userrole=='designer'
               label_tag(orderduedateviaair,orderduedateviaair,class:"span20")   
               else if current_user.userrole=='vendor'
               label_tag(orderduedateviaair,orderduedateviaair,class:"span20") 
               end #vendors
               end #designers
               end #sales
               end #operations 
               end #admin
             end    
                
          
          
          ####### Customer Delivery Tab Ends ######
end #module trackingsheets helper
