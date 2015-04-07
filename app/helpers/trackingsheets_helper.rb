module TrackingsheetsHelper
  

   
   
  
  ###---------------------------------------Factory----------------------------------------------### 
   
   def factory()
		 
				if current_user.userrole==VendorPortal::Application.config.admin
					return true  
				else if current_user.userrole==VendorPortal::Application.config.operationadmin
					return true
				else if current_user.userrole==VendorPortal::Application.config.sales
					return false
        else if current_user.userrole==VendorPortal::Application.config.operationuser
          return false
				else if current_user.userrole==VendorPortal::Application.config.designer
					return true
				else if current_user.userrole==VendorPortal::Application.config.vendor
					return true 
				end #vendors
				end #designers
				end #sales
				end #operations 
				end #admin
		
   end   
   
   ###---------------------------------------Subcontarctor----------------------------------------------### 
   
    def subcontractor()	
			
				if current_user.userrole==VendorPortal::Application.config.admin
					return true   
				else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
					return false    
				else if current_user.userrole==VendorPortal::Application.config.sales
					return false
				else if current_user.userrole==VendorPortal::Application.config.designer
					return false     
				else if current_user.userrole==VendorPortal::Application.config.vendor
					return true      
				end #vendors
				end #designers
				end #sales
				end #operations 
				end #admin
			
    end    
    
    ###---------------------------------------Customername----------------------------------------------### 
   
     def customername()
			
				 if current_user.userrole==VendorPortal::Application.config.admin
		     		return true   
		     else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		    		return true      
		     else if current_user.userrole==VendorPortal::Application.config.sales
		     		return false  
		     else if current_user.userrole==VendorPortal::Application.config.designer
		    		return true      
		     else if current_user.userrole==VendorPortal::Application.config.vendor
		     	 return false    
		     end #vendors
		     end #designers
		     end #sales
		     end #operations 
		     end #admin
			
     end     
     
     ###---------------------------------------Customeraccount----------------------------------------------### 
   
      def customeraccount()
				
						if current_user.userrole==VendorPortal::Application.config.admin
				    		return true  
				    else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
				   		return true     
				    else if current_user.userrole==VendorPortal::Application.config.sales
				   return false   
				    else if current_user.userrole==VendorPortal::Application.config.designer
				    		return true     
				    else if current_user.userrole==VendorPortal::Application.config.vendor
				    return false      
				    end #vendors
				    end #designers
				    end #sales
				    end #operations 
				    end #admin
				
      end   
      
      ###---------------------------------------Project----------------------------------------------### 
   
       def project()
				
						 if current_user.userrole==VendorPortal::Application.config.admin
				     return true   
				     else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
				     return true      
				     else if current_user.userrole==VendorPortal::Application.config.sales
				     return false 
				     else if current_user.userrole==VendorPortal::Application.config.designer
				     return true     
				     else if current_user.userrole==VendorPortal::Application.config.vendor
				     return false    
				     end #vendors
				     end #designers
				     end #sales
				     end #operations 
				     end #admin
				
       end             
       
       ###---------------------------------------Reference Style----------------------------------------------### 
   
        def referncestyle()
					
						if current_user.userrole==VendorPortal::Application.config.admin
		         return true   
		        else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		        return true     
		        else if current_user.userrole==VendorPortal::Application.config.sales
		        return false    
		        else if current_user.userrole==VendorPortal::Application.config.designer
		        return true      
		        else if current_user.userrole==VendorPortal::Application.config.vendor
		        return false       
		        end #vendors
		        end #designers
		        end #sales
		        end #operations 
		        end #admin
					
        end    
        
        ###---------------------------------------X Mill Date----------------------------------------------### 
   
         def xmilldate()
					
							if current_user.userrole==VendorPortal::Application.config.admin
							return true 
							else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
							return false    
							else if current_user.userrole==VendorPortal::Application.config.sales
							return false  
							else if current_user.userrole==VendorPortal::Application.config.designer
							return false 
							else if current_user.userrole==VendorPortal::Application.config.vendor
							return true    
							end #vendors
							end #designers
							end #sales
							end #operations 
							end #admin
					
         end           
         
         ###---------------------------------------Production Lead Time----------------------------------------------### 
   
          def productionleadtime()
					
								if current_user.userrole==VendorPortal::Application.config.admin
				        return true  
				        else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
				       return false      
				        else if current_user.userrole==VendorPortal::Application.config.sales
				        return false  
				        else if current_user.userrole==VendorPortal::Application.config.designer
				        return false  
				        else if current_user.userrole==VendorPortal::Application.config.vendor
				        return true     
				        end #vendors
				        end #designers
				        end #sales
				        end #operations 
				        end #admin
						
          end      
          
          ###---------------------------------------Sales Proceeds to Sample Request--------------------------------------------### 
   
           def salesproceedtosamplerequest()
						
							if current_user.userrole==VendorPortal::Application.config.admin
							return true  
							else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
							return true     
							else if current_user.userrole==VendorPortal::Application.config.sales
							return true  
							else if current_user.userrole==VendorPortal::Application.config.designer
							return false   
							else if current_user.userrole==VendorPortal::Application.config.vendor
							return false  
							end #vendors
							end #designers
							end #sales
							end #operations 
							end #admin
						
           end                         

         ###---------------------------------------Proto Due Back From Vendor--------------------------------------------### 
 
          def protoduebackfromvendor()
							if current_user.userrole==VendorPortal::Application.config.admin
							return true  
							else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
							return true  
							else if current_user.userrole==VendorPortal::Application.config.sales
							return false   
							else if current_user.userrole==VendorPortal::Application.config.designer
							return false    
							else if current_user.userrole==VendorPortal::Application.config.vendor
							return false    
							end #vendors
							end #designers
							end #sales
							end #operations 
							end #admin
					end   
          
        ###---------------------------------------DAF to Vendor Date--------------------------------------------### 

         def daftovendordate()
					if current_user.userrole==VendorPortal::Application.config.admin
           return true    
           else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
           return true     
           else if current_user.userrole==VendorPortal::Application.config.sales
           return false  
           else if current_user.userrole==VendorPortal::Application.config.designer
           return false  
           else if current_user.userrole==VendorPortal::Application.config.vendor
           return false 
           end #vendors
           end #designers
           end #sales
           end #operations 
           end #admin
				end                        
   
         ###---------------------------------------Comments--------------------------------------------### 

          def comments()
            if current_user.userrole=='admin'
            return true
            else if current_user.userrole=='operations'
           return true
            else if current_user.userrole=='sales'
             return true   
            else if current_user.userrole=='designer'
             return true    
            else if current_user.userrole=='vendor'
           return true 
            end #vendors
            end #designers
            end #sales
            end #operations 
            end #admin
          end   

        ###---------------------------------------RTL MU--------------------------------------------### 

         def rtlmu()
           if current_user.userrole==VendorPortal::Application.config.admin
           return true
           else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
          return true
           else if current_user.userrole==VendorPortal::Application.config.sales
            return false   
           else if current_user.userrole==VendorPortal::Application.config.designer
            return false    
           else if current_user.userrole==VendorPortal::Application.config.vendor
          return false 
           end #vendors
           end #designers
           end #sales
           end #operations 
           end #admin
         end     
         
         ###---------------------------------------MK UP--------------------------------------------### 

          def mkup()
            if current_user.userrole==VendorPortal::Application.config.admin
            return true    
            else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
             return true        
            else if current_user.userrole==VendorPortal::Application.config.sales
           return false
            else if current_user.userrole==VendorPortal::Application.config.designer
           return false
            else if current_user.userrole==VendorPortal::Application.config.vendor
           return false
            end #vendors
            end #designers
            end #sales
            end #operations 
            end #admin
          end            
   
          ####### General Tab Ends ######
          
          
          
          ####### Sales Enters Tab Starts ######
          
          ###---------------------------------------Projected Units--------------------------------------------### 

           def projectedunits()
             if current_user.userrole==VendorPortal::Application.config.admin
              return true     
             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
             return false
             else if current_user.userrole==VendorPortal::Application.config.sales
               return true      
             else if current_user.userrole==VendorPortal::Application.config.designer
             return false 
             else if current_user.userrole==VendorPortal::Application.config.vendor
             return false
             end #vendors
             end #designers
             end #sales
             end #operations 
             end #admin
           end   
           
           ###---------------------------------------Target FOB--------------------------------------------### 

            def targetfob()
              if current_user.userrole==VendorPortal::Application.config.admin
               return true      
              else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
            return false
              else if current_user.userrole==VendorPortal::Application.config.sales
                return true      
              else if current_user.userrole==VendorPortal::Application.config.designer
              return false   
              else if current_user.userrole==VendorPortal::Application.config.vendor
              return false
              end #vendors
              end #designers
              end #sales
              end #operations 
              end #admin
            end
            
            ###---------------------------------------Target MU--------------------------------------------### 

             def targetmu()
               if current_user.userrole==VendorPortal::Application.config.admin
                return true     
               else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
               return false  
               else if current_user.userrole==VendorPortal::Application.config.sales
                 return true      
               else if current_user.userrole==VendorPortal::Application.config.designer
               return false   
               else if current_user.userrole==VendorPortal::Application.config.vendor
               return false
               end #vendors
               end #designers
               end #sales
               end #operations 
               end #admin
             end   
             
             ###---------------------------------------Target WS--------------------------------------------### 

              def targetws()
                if current_user.userrole==VendorPortal::Application.config.admin
                 return true    
                else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
               return false 
                else if current_user.userrole==VendorPortal::Application.config.sales
                 return true      
                else if current_user.userrole==VendorPortal::Application.config.designer
                return false
                else if current_user.userrole==VendorPortal::Application.config.vendor
               return false
                end #vendors
                end #designers
                end #sales
                end #operations 
                end #admin
              end  
          
          
          ####### Sales Enters Tab Ends ######
          
          ####### Minimum MOQ Tab Starts ######
          ###---------------------------------------Per Color--------------------------------------------### 

           def percolor()
             if current_user.userrole==VendorPortal::Application.config.admin
              return true      
             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
             return false 
             else if current_user.userrole==VendorPortal::Application.config.sales
             return false 
             else if current_user.userrole==VendorPortal::Application.config.designer
             return false
             else if current_user.userrole==VendorPortal::Application.config.vendor
              return true      
             end #vendors
             end #designers
             end #sales
             end #operations 
             end #admin
           end
           
           ###---------------------------------------Per Style--------------------------------------------### 

            def perstyle()
              if current_user.userrole==VendorPortal::Application.config.admin
               return true      
              else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
              return false 
              else if current_user.userrole==VendorPortal::Application.config.sales
              return false
              else if current_user.userrole==VendorPortal::Application.config.designer
              return false   
              else if current_user.userrole==VendorPortal::Application.config.vendor
               return true      
              end #vendors
              end #designers
              end #sales
              end #operations 
              end #admin
            end
            
            ###---------------------------------------Incoterms--------------------------------------------### 

             def incoterms()
               if current_user.userrole==VendorPortal::Application.config.admin
                return true      
               else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
              return false 
               else if current_user.userrole==VendorPortal::Application.config.sales
              return false
               else if current_user.userrole==VendorPortal::Application.config.designer
               return false  
               else if current_user.userrole==VendorPortal::Application.config.vendor
                return true      
               end #vendors
               end #designers
               end #sales
               end #operations 
               end #admin
             end    
              
          ####### Minimum MOQ Tab Ends ######
          
          ####### First Cost Per Style Tab Starts ###### 
          ###---------------------------------------MOQ--------------------------------------------### 

           def moq()
             if current_user.userrole==VendorPortal::Application.config.admin
              return true      
             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
            return false
             else if current_user.userrole==VendorPortal::Application.config.sales
             return false
             else if current_user.userrole==VendorPortal::Application.config.designer
             return false
             else if current_user.userrole==VendorPortal::Application.config.vendor
             return true      
             end #vendors
             end #designers
             end #sales
             end #operations 
             end #admin
           end 
           
           ###---------------------------------------1000 - 5000 PCS--------------------------------------------### 

            def thousandtofivethousandPCS()
              if current_user.userrole==VendorPortal::Application.config.admin
               return true    
              else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
              return false  
              else if current_user.userrole==VendorPortal::Application.config.sales
              return false
              else if current_user.userrole==VendorPortal::Application.config.designer
              return false
              else if current_user.userrole==VendorPortal::Application.config.vendor
               return true    
              end #vendors
              end #designers
              end #sales
              end #operations 
              end #admin
            end 
            
            ###---------------------------------------5000 - 10,000 PCS--------------------------------------------### 

             def fivethousandtotenthousandPCS()
               if current_user.userrole==VendorPortal::Application.config.admin
                return true    
               else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
               return false
               else if current_user.userrole==VendorPortal::Application.config.sales
               return false 
               else if current_user.userrole==VendorPortal::Application.config.designer
               return false
               else if current_user.userrole==VendorPortal::Application.config.vendor
                return true    
               end #vendors
               end #designers
               end #sales
               end #operations 
               end #admin
             end   
          
          ####### First Cost Per Style Tab Starts ######
          
          ####### LDP Boat Tab Starts ######
          
          ###---------------------------------------LDP Boat--------------------------------------------### 

           def ldpboat()
             if current_user.userrole==VendorPortal::Application.config.admin
              return true    
             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
              return true    
             else if current_user.userrole==VendorPortal::Application.config.sales
             return false
             else if current_user.userrole==VendorPortal::Application.config.designer
             return false
             else if current_user.userrole==VendorPortal::Application.config.vendor
            return false
             end #vendors
             end #designers
             end #sales
             end #operations 
             end #admin
           end  
           
           ###---------------------------------------LDP Air--------------------------------------------### 

            def ldpair()
              if current_user.userrole==VendorPortal::Application.config.admin
              return true     
              else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
               return true     
              else if current_user.userrole==VendorPortal::Application.config.sales
              return false
              else if current_user.userrole==VendorPortal::Application.config.designer
              return false
              else if current_user.userrole==VendorPortal::Application.config.vendor
              return false
              end #vendors
              end #designers
              end #sales
              end #operations 
              end #admin
            end  
          
          ####### LDP Boat Tab Starts ######
          
          
          ####### Customer Delivery Tab Starts ######
          ###---------------------------------------Start Ship Date--------------------------------------------### 

           def startshipdate()
             if current_user.userrole==VendorPortal::Application.config.admin
              return true      
             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
             return false
             else if current_user.userrole==VendorPortal::Application.config.sales
              return true    
             else if current_user.userrole==VendorPortal::Application.config.designer
            return false 
             else if current_user.userrole==VendorPortal::Application.config.vendor
             return false
             end #vendors
             end #designers
             end #sales
             end #operations 
             end #admin
           end
           
           ###---------------------------------------Order Due Date Via Boat--------------------------------------------### 

            def orderduedateviaboat()
              if current_user.userrole==VendorPortal::Application.config.admin
               return true     
              else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
              return true 
              else if current_user.userrole==VendorPortal::Application.config.sales
               return false    
              else if current_user.userrole==VendorPortal::Application.config.designer
              return false  
              else if current_user.userrole==VendorPortal::Application.config.vendor
              return false
              end #vendors
              end #designers
              end #sales
              end #operations 
              end #admin
            end 
            
            ###-----------------------------------------------------------------------------------### 

             def orderduedateviaair()
               if current_user.userrole==VendorPortal::Application.config.admin
                return true    
               else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
              return true
               else if current_user.userrole==VendorPortal::Application.config.sales
                return false    
               else if current_user.userrole==VendorPortal::Application.config.designer
               return false  
               else if current_user.userrole==VendorPortal::Application.config.vendor
              return false
               end #vendors
               end #designers
               end #sales
               end #operations 
               end #admin
             end    
               	

					 ###---------------------------------------Brand----------------------------------------------### 					

						  def	brand()
								 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		            return false
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return false
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
			 	 ###---------------------------------------Customername----------------------------------------------### 
							def	customername()
	 							if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return false
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		            return false
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		            return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
 			 	###---------------------------------------Customeraccountnumber----------------------------------------------### 
							def	customeraccountnumber()
	 							if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return false
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		            return false
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false 
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
			 	 ###---------------------------------------Projectnumber----------------------------------------------### 
							def	projectnumber()
	 							if current_user.userrole==VendorPortal::Application.config.admin
		             return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return false
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		            return false   
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
 			 	###---------------------------------------Customerstylenumber----------------------------------------------### 
							def	customerstylenumber()
	 							if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		            return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		            return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
 			 	###---------------------------------------Groupname----------------------------------------------### 
							def	groupname()
								 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return false   
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
			 	 ###--------------------------------------Productcategory----------------------------------------------### 
							def	productcategory()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return true 
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
 			 	###---------------------------------------Designname----------------------------------------------### 
							def	designname()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
 			 	###---------------------------------------Shape----------------------------------------------### 
							def	shape()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
			 	 ###---------------------------------------Size----------------------------------------------### 
							def	size()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		            return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		            return true
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		            return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
 			 	###---------------------------------------Fiber----------------------------------------------### 
							def	fiber()
								 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		             return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return true  
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
			 	 ###---------------------------------------Construction----------------------------------------------### 
							def	construction()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		             return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		            return true
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
 			 	###---------------------------------------Fabrictype----------------------------------------------### 
							def	fabrictype()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return true 
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return true 
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
 			 	###---------------------------------------Gauge End----------------------------------------------### 
							def	gauge_end()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		            return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return true  
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
			 	 ###---------------------------------------Finish----------------------------------------------### 
							def	finish()
	 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return true 
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return true   
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
			 	 ###---------------------------------------finishdetails----------------------------------------------### 
							def	finishdetails()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true     
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return true   
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
 			 	###---------------------------------------colors----------------------------------------------### 
							def	colors()
								 if current_user.userrole==VendorPortal::Application.config.admin
		              return true     
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		             return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return true   
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		            return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
			 	 ###---------------------------------------hw_logo_trim----------------------------------------------### 
							def	hw_logo_trim()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return false
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return false   
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		            return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
			 	 ###---------------------------------------components----------------------------------------------### 
							def	components()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true     
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		             return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		            return true
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end


			 	 ###---------------------------------------targetretailus----------------------------------------------### 
							def	targetretailus()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return false
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return false  
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
			 	 ###---------------------------------------targetretailcan----------------------------------------------### 
							def	targetretailcan()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true      
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return false
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		            return false  
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end


			 	 ###---------------------------------------pricebasedonprojection----------------------------------------------### 
							def	pricebasedonprojection()
								 if current_user.userrole==VendorPortal::Application.config.admin
		              return true      
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return false 
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		            return false   
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return true
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
 			 	###---------------------------------------additionalsurcharge----------------------------------------------### 
							def	additionalsurcharge()
								 if current_user.userrole==VendorPortal::Application.config.admin
		              return true      
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return false
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return false
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		            return true
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end


			 	 ###---------------------------------------tenthousandtotwentythousandPCS----------------------------------------------### 
							def	tenthousandtotwentythousandPCS()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return false
		             else if current_user.userrole==VendorPortal::Application.config.sales
		             return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return false  
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return true
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
			 	 ###---------------------------------------twentythousandplusPCS----------------------------------------------### 
							def	twentythousandplusPCS()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		             return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return false
		             else if current_user.userrole==VendorPortal::Application.config.sales
		             return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return false   
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return true
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end


 			 	###---------------------------------------xmill----------------------------------------------### 
							def	xmill()
	 						   if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return false
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return false 
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return true
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
 			 	###---------------------------------------received----------------------------------------------### 
							def	received()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		             return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return false  
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
			 	 ###---------------------------------------approved----------------------------------------------### 
							def	approved()
							   if current_user.userrole==VendorPortal::Application.config.admin
		              return true     
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return false
		             else if current_user.userrole==VendorPortal::Application.config.sales
		             return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return true   
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end

			 	 ###---------------------------------------daf2xmill----------------------------------------------### 
							def	daf2xmill()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return false
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return false  
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return true
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
			 	 ###---------------------------------------daf2received----------------------------------------------### 
							def	daf2received()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		              return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return false  
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false 
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
			 	 ###---------------------------------------daf2approved----------------------------------------------### 
							def	daf2approved()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return false 
		             else if current_user.userrole==VendorPortal::Application.config.sales
		             return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return true 
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end







							#VS DS tab values #new
			 	###---------------------------------------sdsreceived----------------------------------------------### 
							def	vsdsreceived()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		             return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return false   
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end

				  ###---------------------------------------vsdsapproved----------------------------------------------### 
							def	vsdsapproved()
	 							 if current_user.userrole==VendorPortal::Application.config.admin
		              return true    
		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
		             return true
		             else if current_user.userrole==VendorPortal::Application.config.sales
		             return false    
		             else if current_user.userrole==VendorPortal::Application.config.designer
		             return false
		             else if current_user.userrole==VendorPortal::Application.config.vendor
		             return false
		             end #vendors
		             end #designers
		             end #sales
		             end #operations 
		             end #admin
							end
              
  				  ###---------------------------------------proto_daf_number----------------------------------------------### 
  							def	proto_daf_number()
  	 							 if current_user.userrole==VendorPortal::Application.config.admin
  		              return true    
  		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
  		             return true
  		             else if current_user.userrole==VendorPortal::Application.config.sales
  		             return false    
  		             else if current_user.userrole==VendorPortal::Application.config.designer
  		             return true
  		             else if current_user.userrole==VendorPortal::Application.config.vendor
  		             return false
  		             end #vendors
  		             end #designers
  		             end #sales
  		             end #operations 
  		             end #admin
  							end
                
      				  ###---------------------------------------FIRST DAF SOSS----------------------------------------------### 
      							def	soss()
      	 							 if current_user.userrole==VendorPortal::Application.config.admin
      		              return true    
      		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
      		             return false
      		             else if current_user.userrole==VendorPortal::Application.config.sales
      		             return false    
      		             else if current_user.userrole==VendorPortal::Application.config.designer
      		             return true
      		             else if current_user.userrole==VendorPortal::Application.config.vendor
      		             return false
      		             end #vendors
      		             end #designers
      		             end #sales
      		             end #operations 
      		             end #admin
      							end  
                    
          				  ###---------------------------------------Development Samples----------------------------------------------### 
          							def	nmbrofdefsmplneeded()
          	 							 if current_user.userrole==VendorPortal::Application.config.admin
          		              return true    
          		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
          		             return true
          		             else if current_user.userrole==VendorPortal::Application.config.sales
          		             return false    
          		             else if current_user.userrole==VendorPortal::Application.config.designer
          		             return false
          		             else if current_user.userrole==VendorPortal::Application.config.vendor
          		             return false
          		             end #vendors
          		             end #designers
          		             end #sales
          		             end #operations 
          		             end #admin
          							end     
                        
              				  ###-----------------------------Daf Issued----------------------------------------------### 
              							def	dafissued()
              	 							 if current_user.userrole==VendorPortal::Application.config.admin
              		              return true    
              		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
              		             return true
              		             else if current_user.userrole==VendorPortal::Application.config.sales
              		             return false    
              		             else if current_user.userrole==VendorPortal::Application.config.designer
              		             return false
              		             else if current_user.userrole==VendorPortal::Application.config.vendor
              		             return false
              		             end #vendors
              		             end #designers
              		             end #sales
              		             end #operations 
              		             end #admin
              							end       
                            
                  				  ###-----------------------------Sample Due Date----------------------------------------------### 
                  							def	sampleduedate()
                  	 							 if current_user.userrole==VendorPortal::Application.config.admin
                  		              return true    
                  		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
                  		             return false
                  		             else if current_user.userrole==VendorPortal::Application.config.sales
                  		             return false    
                  		             else if current_user.userrole==VendorPortal::Application.config.designer
                  		             return true
                  		             else if current_user.userrole==VendorPortal::Application.config.vendor
                  		             return false
                  		             end #vendors
                  		             end #designers
                  		             end #sales
                  		             end #operations 
                  		             end #admin
                  							end      
                                
                                
                      				  ###-----------------------------Daf2 SOSS----------------------------------------------### 
                      							def	daf2soss()
                      	 							 if current_user.userrole==VendorPortal::Application.config.admin
                      		              return true    
                      		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
                      		             return false
                      		             else if current_user.userrole==VendorPortal::Application.config.sales
                      		             return false    
                      		             else if current_user.userrole==VendorPortal::Application.config.designer
                      		             return true
                      		             else if current_user.userrole==VendorPortal::Application.config.vendor
                      		             return false
                      		             end #vendors
                      		             end #designers
                      		             end #sales
                      		             end #operations 
                      		             end #admin
                      							end     
                                    
                          				  ###------------------------Development Samples----------------------------------------------### 
                          							def	daf2nmbrofdefsmplneeded()
                          	 							 if current_user.userrole==VendorPortal::Application.config.admin
                          		              return true    
                          		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
                          		             return true
                          		             else if current_user.userrole==VendorPortal::Application.config.sales
                          		             return false    
                          		             else if current_user.userrole==VendorPortal::Application.config.designer
                          		             return false
                          		             else if current_user.userrole==VendorPortal::Application.config.vendor
                          		             return false
                          		             end #vendors
                          		             end #designers
                          		             end #sales
                          		             end #operations 
                          		             end #admin
                          							end          
                                        
                              				  ###-----------------Development Samples----------------------------------------------### 
                              							def	daf2dafissued()
                              	 							 if current_user.userrole==VendorPortal::Application.config.admin
                              		              return true    
                              		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
                              		             return true
                              		             else if current_user.userrole==VendorPortal::Application.config.sales
                              		             return false    
                              		             else if current_user.userrole==VendorPortal::Application.config.designer
                              		             return false
                              		             else if current_user.userrole==VendorPortal::Application.config.vendor
                              		             return false
                              		             end #vendors
                              		             end #designers
                              		             end #sales
                              		             end #operations 
                              		             end #admin
                              							end       
                                            
                                  				  ###-----------------Development Samples----------------------------------------------### 
                                  							def	daf2sampleduedate()
                                  	 							 if current_user.userrole==VendorPortal::Application.config.admin
                                  		              return true    
                                  		             else if current_user.userrole==VendorPortal::Application.config.operationadmin ||  current_user.userrole==VendorPortal::Application.config.operationuser
                                  		             return false
                                  		             else if current_user.userrole==VendorPortal::Application.config.sales
                                  		             return false    
                                  		             else if current_user.userrole==VendorPortal::Application.config.designer
                                  		             return true
                                  		             else if current_user.userrole==VendorPortal::Application.config.vendor
                                  		             return false
                                  		             end #vendors
                                  		             end #designers
                                  		             end #sales
                                  		             end #operations 
                                  		             end #admin
                                  							end                                        
                                            
                                            
                                  	                                                      
                        
                           

          
          
          ####### Customer Delivery Tab Ends ######
end #module trackingsheets helper
