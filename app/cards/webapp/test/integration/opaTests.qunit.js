sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'cards/cards/test/integration/FirstJourney',
		'cards/cards/test/integration/pages/CartsList',
		'cards/cards/test/integration/pages/CartsObjectPage'
    ],
    function(JourneyRunner, opaJourney, CartsList, CartsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('cards/cards') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCartsList: CartsList,
					onTheCartsObjectPage: CartsObjectPage
                }
            },
            opaJourney.run
        );
    }
);