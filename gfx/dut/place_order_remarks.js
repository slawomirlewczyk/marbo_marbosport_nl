
app_shop.run(function remarksTogglerInit(){$('#place-order__remarks a').on('click',function toggleRemarks(){$(this).next().toggle();return false;});},'all','#place-order__remarks a');