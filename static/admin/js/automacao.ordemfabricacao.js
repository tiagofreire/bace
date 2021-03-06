var OrdemFabricacao = {
  carregaMaterialNotaFiscal : function(){
    jQuery.post("/automacao/ordemfabricacao/add/pesquisa_nota_fiscal",{
					"nota_fiscal" : jQuery("#id_nota_fiscal_text").val(),
					"csrfmiddlewaretoken" :jQuery("input[name='csrfmiddlewaretoken']").val()
			}, function(r){
			jQuery(".list_materiais_nota_fiscal").html(r);
			jQuery("#id_nota_fiscal option[value='"+jQuery("#nota_fiscal_pk").val()+"']").attr('selected','selected')

		});
  },   
  carregaNota : function(){         
    if (jQuery("#id_nota_fiscal").val() != "") {
      jQuery("#id_nota_fiscal_text").attr('value',jQuery("#id_nota_fiscal :selected").html());
		  OrdemFabricacao.carregaMaterialNotaFiscal();                                                            
	  }
  },
  selecionaProdutoNotaFiscal : function(element, id){
    if (jQuery(element).attr("checked") == "checked")
      jQuery("#id_materia_nota_fiscal option[value='"+id+"']").attr("selected",true);
    else
      jQuery("#id_materia_nota_fiscal option[value='"+id+"']").attr("selected",false);
  },
  init : function(){
    OrdemFabricacao.carregaNota();
  	jQuery("#pesquisa_nota_fiscal").click(function(){
  		OrdemFabricacao.carregaMaterialNotaFiscal();
   	});                               
   	setTimeout(function(){
   	  
                                  
   	jQuery(document).ready(function(){
      jQuery.each(jQuery("#id_materia_nota_fiscal :selected"), function(k,v){
        jQuery("#materia_nota_fiscal_"+$(v).val()).attr("checked",true);
      });                                   
    });
       	},250);
  	jQuery(".field-valor input, #id_valor_total, .field-peso input").maskMoney({decimal:".",thousands:"", precision:2})
  	jQuery(".add-row a").live("click",function(){
  		jQuery(".field-valor input, #id_valor_total, .field-peso input").maskMoney({decimal:".",thousands:"", precision:2});
  	});
  }
}

jQuery(function(){ OrdemFabricacao.init(); });


