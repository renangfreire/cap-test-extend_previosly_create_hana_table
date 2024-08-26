sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/lab2dev/dbhotelfiori/test/integration/FirstJourney',
		'com/lab2dev/dbhotelfiori/test/integration/pages/HOTELList',
		'com/lab2dev/dbhotelfiori/test/integration/pages/HOTELObjectPage'
    ],
    function(JourneyRunner, opaJourney, HOTELList, HOTELObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/lab2dev/dbhotelfiori') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheHOTELList: HOTELList,
					onTheHOTELObjectPage: HOTELObjectPage
                }
            },
            opaJourney.run
        );
    }
);