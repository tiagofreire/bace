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
		return arraySum.toFixed(2);
	},
	init : function(){              
		var vv = [];
		var qtd_campos = jQuery('.field-valor input').length;
		//if (jQuery("#id_valor_total").val()=="") {jQuery("#id_valor_total").val(vv)};  
		//jQuery("#id_valor_total").attr("disabled","true");   
		setInterval(function(){    
			jQuery.each(jQuery('.field-valor input'), function(k,v){   
				if (jQuery(v).val() != "") {
					vv[k] = parseFloat(jQuery(v).val());   
				} 
			});
			jQuery("#id_valor_total").val(NotaFiscal.somaValoresArray(vv));    
		},500);
		    
		jQuery(".field-valor input, #id_valor_total, .field-peso input").maskMoney({decimal:".",thousands:"", precision:2})
		jQuery(".add-row a").live("click",function(){
			jQuery(".field-valor input, #id_valor_total, .field-peso input").maskMoney({decimal:".",thousands:"", precision:2});
		})
	}   
};

jQuery(function(){
	NotaFiscal.init();
});