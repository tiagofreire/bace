var NotaFiscal = {   
	somaValoresArray : function (arr){
		var arraySum = 0;
		if (arr.length > 0) {
			for(i in arr){
				if (typeof(arr[i])=="number") {
					arraySum += arr[i];
				}
			}
		}
		return arraySum.toFixed(3);
	},
	init : function(){              
		var vv = [];
		var qtd_campos = jQuery('.field-valor input').length;
		//if (jQuery("#id_valor_total").val()=="") {jQuery("#id_valor_total").val(vv)};  
		//jQuery("#id_valor_total").attr("disabled","true");   
		setInterval(function(){    
			jQuery.each(jQuery('.field-peso input'), function(k,v){   
				if (jQuery(v).val() != "") {
					vv[k] = parseFloat(jQuery(v).val());   
				} 
			});
			jQuery("#id_peso_total").val(NotaFiscal.somaValoresArray(vv));    
		},500);
		    
		jQuery(".field-valor input, #id_peso_total, .field-peso input").maskMoney({decimal:".",thousands:"", precision:3})
		jQuery(".add-row a").live("click",function(){
			jQuery(".field-valor input, #id_peso_total, .field-peso input").maskMoney({decimal:".",thousands:"", precision:3});
		})
	}   
};

jQuery(function(){
	NotaFiscal.init();
});