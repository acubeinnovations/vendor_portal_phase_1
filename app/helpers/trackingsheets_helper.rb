module TrackingsheetsHelper
  

   
   
  
  ###---------------------------------------Factory----------------------------------------------### 
   
   def factory(trackingsheet)
		 if trackingsheet.lock=='false'
				if current_user.userrole==VendorPortal::Application.config.admin
					return true  
				else if current_user.userrole==VendorPortal::Application.config.operationadmin 
					return true
				else if current_user.userrole==VendorPortal::Application.config.sales || current_user.userrole==VendorPortal::Application.config.operationuser
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
		else
			return false 
		end
		
   end   
   
   ###---------------------------------------Subcontarctor----------------------------------------------### 
   
    def subcontractor(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
		
			
    end    
    
    ###---------------------------------------Customername----------------------------------------------### 
   
     def customername(trackingsheet)
		 if trackingsheet.lock=='false'
			
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
		else
			return false 
		end
		
			
     end     
     
     ###---------------------------------------Customeraccount----------------------------------------------### 
   
      def customeraccount(trackingsheet)
		 	if trackingsheet.lock=='false'
				
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
		else
			return false 
		end
				
      end   
      
      ###---------------------------------------Project----------------------------------------------### 
   
       def project(trackingsheet)
		 if trackingsheet.lock=='false'
				
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
		else
			return false 
		end
			
				
       end             
	###--------------------------------------- Style----------------------------------------------### 
			 def style(trackingsheet)
			 	 if trackingsheet.lock=='false'
						 return true   
		     else
						return false 
				 end
			
				end  

	###--------------------------------------- vendor----------------------------------------------### 
			 def vendor(trackingsheet)
			 	 if trackingsheet.lock=='false'
						 return true   
		     else
						return false 
				 end
			
				end         
       ###---------------------------------------Reference Style----------------------------------------------### 
   
        def referncestyle(trackingsheet)
		 if trackingsheet.lock=='false'
					
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
				else
					return false 
				end
					
					
        end    
        
        ###---------------------------------------X Mill Date----------------------------------------------### 
   
         def xmilldate(trackingsheet)
		 if trackingsheet.lock=='false'
					
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
				else
					return false 
				end
					
         end           
         
         ###---------------------------------------Production Lead Time----------------------------------------------### 
   
          def productionleadtime(trackingsheet)
		 if trackingsheet.lock=='false'
					
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
				else
					return false 
				end
						
          end      
          
          ###---------------------------------------Sales Proceeds to Sample Request--------------------------------------------### 
   
           def salesproceedtosamplerequest(trackingsheet)
		 if trackingsheet.lock=='false'
						
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
				else
					return false 
				end
						
           end                         

         ###---------------------------------------Proto Due Back From Vendor--------------------------------------------### 
 
          def protoduebackfromvendor(trackingsheet)
		 if trackingsheet.lock=='false'
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
				else
					return false 
				end
					end   
          
        ###---------------------------------------DAF to Vendor Date--------------------------------------------### 

         def daftovendordate(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
				end                        
   
         ###---------------------------------------Comments--------------------------------------------### 

          def comments(trackingsheet)
		 if trackingsheet.lock=='false'
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
				else
					return false 
				end
          end   

        ###---------------------------------------RTL MU--------------------------------------------### 

         def rtlmu(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
         end     
         
         ###---------------------------------------MK UP--------------------------------------------### 

          def mkup(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
          end            
   
          ####### General Tab Ends ######
          
          
          
          ####### Sales Enters Tab Starts ######
          
          ###---------------------------------------Projected Units--------------------------------------------### 

           def projectedunits(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
           end   
           
           ###---------------------------------------Target FOB--------------------------------------------### 

            def targetfob(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
            end
            
            ###---------------------------------------Target MU--------------------------------------------### 

             def targetmu(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
             end   
             
             ###---------------------------------------Target WS--------------------------------------------### 

              def targetws(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
              end  
          
          
          ####### Sales Enters Tab Ends ######
          
          ####### Minimum MOQ Tab Starts ######
          ###---------------------------------------Per Color--------------------------------------------### 

           def percolor(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
           end
           
           ###---------------------------------------Per Style--------------------------------------------### 

            def perstyle(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
            end
            
            ###---------------------------------------Incoterms--------------------------------------------### 

             def incoterms(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
             end    
              
          ####### Minimum MOQ Tab Ends ######
          
          ####### First Cost Per Style Tab Starts ###### 
          ###---------------------------------------MOQ--------------------------------------------### 

           def moq(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
           end 
           
           ###---------------------------------------1000 - 5000 PCS--------------------------------------------### 

            def thousandtofivethousandPCS(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
            end 
            
            ###---------------------------------------5000 - 10,000 PCS--------------------------------------------### 

             def fivethousandtotenthousandPCS(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
             end   
          
          ####### First Cost Per Style Tab Starts ######
          
          ####### LDP Boat Tab Starts ######
          
          ###---------------------------------------LDP Boat--------------------------------------------### 

           def ldpboat(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
           end  
           
           ###---------------------------------------LDP Air--------------------------------------------### 

            def ldpair(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
            end  
          
          ####### LDP Boat Tab Starts ######
          
          
          ####### Customer Delivery Tab Starts ######
          ###---------------------------------------Start Ship Date--------------------------------------------### 

           def startshipdate(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
           end
           
           ###---------------------------------------Order Due Date Via Boat--------------------------------------------### 

            def orderduedateviaboat(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
            end 
            
            ###-----------------------------------------------------------------------------------### 

             def orderduedateviaair(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
             end    
               	

					 ###---------------------------------------Brand----------------------------------------------### 					

						  def	brand(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
			 	 ###---------------------------------------Customername----------------------------------------------### 
							def	customername(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
 			 	###---------------------------------------Customeraccountnumber----------------------------------------------### 
							def	customeraccountnumber(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
			 	 ###---------------------------------------Projectnumber----------------------------------------------### 
							def	projectnumber(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
 			 	###---------------------------------------Customerstylenumber----------------------------------------------### 
							def	customerstylenumber(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
 			 	###---------------------------------------Groupname----------------------------------------------### 
							def	groupname(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
			 	 ###--------------------------------------Productcategory----------------------------------------------### 
							def	productcategory(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
 			 	###---------------------------------------Designname----------------------------------------------### 
							def	designname(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
 			 	###---------------------------------------Shape----------------------------------------------### 
							def	shape(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
			 	 ###---------------------------------------Size----------------------------------------------### 
							def	size(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
 			 	###---------------------------------------Fiber----------------------------------------------### 
							def	fiber(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
			 	 ###---------------------------------------Construction----------------------------------------------### 
							def	construction(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
 			 	###---------------------------------------Fabrictype----------------------------------------------### 
							def	fabrictype(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
 			 	###---------------------------------------Gauge End----------------------------------------------### 
							def	gauge_end(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
			 	 ###---------------------------------------Finish----------------------------------------------### 
							def	finish(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
			 	 ###---------------------------------------finishdetails----------------------------------------------### 
							def	finishdetails(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
 			 	###---------------------------------------colors----------------------------------------------### 
							def	colors(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
			 	 ###---------------------------------------hw_logo_trim----------------------------------------------### 
							def	hw_logo_trim(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
			 	 ###---------------------------------------components----------------------------------------------### 
							def	components(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end


			 	 ###---------------------------------------targetretailus----------------------------------------------### 
							def	targetretailus(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
			 	 ###---------------------------------------targetretailcan----------------------------------------------### 
							def	targetretailcan(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end


			 	 ###---------------------------------------pricebasedonprojection----------------------------------------------### 
							def	pricebasedonprojection(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
 			 	###---------------------------------------additionalsurcharge----------------------------------------------### 
							def	additionalsurcharge(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end


			 	 ###---------------------------------------tenthousandtotwentythousandPCS----------------------------------------------### 
							def	tenthousandtotwentythousandPCS(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
			 	 ###---------------------------------------twentythousandplusPCS----------------------------------------------### 
							def	twentythousandplusPCS(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end


 			 	###---------------------------------------xmill----------------------------------------------### 
							def	xmill(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
 			 	###---------------------------------------received----------------------------------------------### 
							def	received(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
			 	 ###---------------------------------------approved----------------------------------------------### 
							def	approved(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end

			 	 ###---------------------------------------daf2xmill----------------------------------------------### 
							def	daf2xmill(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
			 	 ###---------------------------------------daf2received----------------------------------------------### 
							def	daf2received(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
			 	 ###---------------------------------------daf2approved----------------------------------------------### 
							def	daf2approved(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end







							#VS DS tab values #new
			 	###---------------------------------------sdsreceived----------------------------------------------### 
							def	vsdsreceived(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end

				  ###---------------------------------------vsdsapproved----------------------------------------------### 
							def	vsdsapproved(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
							end
              
  				  ###---------------------------------------proto_daf_number----------------------------------------------### 
  							def	proto_daf_number(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
  							end
                
      				  ###---------------------------------------FIRST DAF SOSS----------------------------------------------### 
      							def	soss(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
      							end  
                    
          				  ###---------------------------------------Development Samples----------------------------------------------### 
          							def	nmbrofdefsmplneeded(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
          							end     
                        
              				  ###-----------------------------Daf Issued----------------------------------------------### 
              							def	dafissued(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
              							end       
                            
                  				  ###-----------------------------Sample Due Date----------------------------------------------### 
                  							def	sampleduedate(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
                  							end      
                                
                                
                      				  ###-----------------------------Daf2 SOSS----------------------------------------------### 
                      							def	daf2soss(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
                      							end     
                                    
                          				  ###------------------------Development Samples----------------------------------------------### 
                          							def	daf2nmbrofdefsmplneeded(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
                          							end          
                                        
                              				  ###-----------------Development Samples----------------------------------------------### 
                              							def	daf2dafissued(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
                              							end       
                                            
                                  				  ###-----------------Development Samples----------------------------------------------### 
                                  							def	daf2sampleduedate(trackingsheet)
		 if trackingsheet.lock=='false'
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
		else
			return false 
		end
                                  							end                                        
                                            
                                            
                                  	                                                      
                        
                           

          
          
          ####### Customer Delivery Tab Ends ######
end #module trackingsheets helper
