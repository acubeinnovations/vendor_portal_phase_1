(function(window, document, undefined) {
				"use strict";
				
				var gridColSortTypes = ["string", "number", "number", "number", "number", "number", "number", "number", "number", "number", "number", "number", "number", "string", "string", "string"], 
				    gridColAlign = [];
				
				var onColumnSort = function(newIndexOrder, columnIndex, lastColumnIndex) {
					var doc = document;
					if (columnIndex !== lastColumnIndex) {
						if (lastColumnIndex > -1) {
							doc.getElementById("demoHdr" + (lastColumnIndex - 1)).parentNode.style.backgroundColor = "";
						}
						doc.getElementById("demoHdr" + (columnIndex - 1)).parentNode.style.backgroundColor = "#f7f7f7";
					}
				};
				
				var onResizeGrid = function(newWidth, newHeight) {
					var demoDivStyle = document.getElementById("demoDiv").style;
					demoDivStyle.width = newWidth + "px";
					demoDivStyle.height = newHeight + "px";
				};
				
				for (var i=0, col; col=gridColSortTypes[i]; i++) {
					gridColAlign[i] = (col === "number") ? "right" : "left";
				}
				
				var myGrid = new Grid("demoGrid", {
				    	srcType : "dom", 
				    	srcData : "demoTable", 
				    	allowGridResize : true, 
				    	allowColumnResize : true, 
				    	allowClientSideSorting : true, 
				    	allowSelections : false, 
				    	allowMultipleSelections : true, 
				    	showSelectionColumn : true, 
				    	onColumnSort : onColumnSort, 
				    	onResizeGrid : onResizeGrid, 
				    	colAlign : gridColAlign, 
				    	colBGColors : ["#fafafa"], 
				    	colSortTypes : gridColSortTypes, 
				    	fixedCols : 2
				    });
			})(this, this.document);
