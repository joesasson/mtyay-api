require 'pry'
original_stations = [
  {
    "OBJECTID": "6",
    "NAME": "238th St",
    "the_geom": "POINT (-73.90087000018522 40.88466700064975)",
    "LINE": "1",
    "NOTES": "1-all times, exit only northbound"
  },
  {
    "OBJECTID": "156",
    "NAME": "145th St",
    "the_geom": "POINT (-73.95035999879713 40.82655099962194)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "157",
    "NAME": "157th St",
    "the_geom": "POINT (-73.94488999901047 40.8340410001399)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "159",
    "NAME": "103rd St",
    "the_geom": "POINT (-73.96837899960818 40.799446000334825)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "166",
    "NAME": "Cathedral Pkwy (110th St)",
    "the_geom": "POINT (-73.9668470005456 40.80396699961484)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "167",
    "NAME": "116th St - Columbia University",
    "the_geom": "POINT (-73.96410999757751 40.807722001230864)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "172",
    "NAME": "137th St - City College",
    "the_geom": "POINT (-73.95367600087873 40.82200799968475)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "177",
    "NAME": "168th St",
    "the_geom": "POINT (-73.94013299907257 40.840555999148535)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "178",
    "NAME": "181st St",
    "the_geom": "POINT (-73.9335959996056 40.84950499974065)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "179",
    "NAME": "191st St",
    "the_geom": "POINT (-73.92941199742039 40.85522500175836)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "266",
    "NAME": "Marble Hill - 225th St",
    "the_geom": "POINT (-73.90983099923551 40.87456099941789)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "267",
    "NAME": "231st St",
    "the_geom": "POINT (-73.90483400107873 40.87885599817935)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "268",
    "NAME": "215th St",
    "the_geom": "POINT (-73.91527899954356 40.86944399946045)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "269",
    "NAME": "207th St",
    "the_geom": "POINT (-73.91881900132312 40.864614000525854)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "271",
    "NAME": "Van Cortlandt Park - 242nd St",
    "the_geom": "POINT (-73.89858300049647 40.88924800011476)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "286",
    "NAME": "Dyckman St",
    "the_geom": "POINT (-73.92553600006474 40.86053100138796)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "287",
    "NAME": "125th St",
    "the_geom": "POINT (-73.95837200097044 40.815580999978934)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "418",
    "NAME": "South Ferry",
    "the_geom": "POINT (-74.01316895919258 40.701730507574474)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "425",
    "NAME": "Rector St",
    "the_geom": "POINT (-74.01378300119742 40.707512999521775)",
    "LINE": "1",
    "NOTES": "1-all times"
  },
  {
    "OBJECTID": "426",
    "NAME": "Cortlandt St",
    "the_geom": "POINT (-74.01218800112292 40.7118350008202)",
    "LINE": "1",
    "NOTES": "Temporarily closed"
  },
  {
    "OBJECTID": "280",
    "NAME": "Wakefield - 241st St",
    "the_geom": "POINT (-73.8506199987954 40.903125000541245)",
    "LINE": "2",
    "NOTES": "2-all times"
  },
  {
    "OBJECTID": "173",
    "NAME": "145th St",
    "the_geom": "POINT (-73.93624499873299 40.82042099969279)",
    "LINE": "3",
    "NOTES": "3-all times, exit only northbound"
  },
  {
    "OBJECTID": "261",
    "NAME": "Harlem - 148 St",
    "the_geom": "POINT (-73.93647000005559 40.82388000080457)",
    "LINE": "3",
    "NOTES": "3-all times"
  },
  {
    "OBJECTID": "47",
    "NAME": "149th St - Grand Concourse",
    "the_geom": "POINT (-73.9273847542618 40.81830344372315)",
    "LINE": "4",
    "NOTES": "4-all times"
  },
  {
    "OBJECTID": "48",
    "NAME": "161st St - Yankee Stadium",
    "the_geom": "POINT (-73.92569199505733 40.82823032742169)",
    "LINE": "4",
    "NOTES": "4-all times"
  },
  {
    "OBJECTID": "174",
    "NAME": "176th St",
    "the_geom": "POINT (-73.91179399884471 40.8484800012369)",
    "LINE": "4",
    "NOTES": "4-all times"
  },
  {
    "OBJECTID": "175",
    "NAME": "Burnside Ave",
    "the_geom": "POINT (-73.9076840015997 40.85345300155693)",
    "LINE": "4",
    "NOTES": "4-all times"
  },
  {
    "OBJECTID": "259",
    "NAME": "Kingsbridge Rd",
    "the_geom": "POINT (-73.89717400101743 40.867760000885795)",
    "LINE": "4",
    "NOTES": "4-all times"
  },
  {
    "OBJECTID": "260",
    "NAME": "Bedford Park Blvd - Lehman College",
    "the_geom": "POINT (-73.89006400069478 40.87341199980121)",
    "LINE": "4",
    "NOTES": "4-all times"
  },
  {
    "OBJECTID": "262",
    "NAME": "Mt Eden Ave",
    "the_geom": "POINT (-73.9146849986034 40.84443400092679)",
    "LINE": "4",
    "NOTES": "4-all times"
  },
  {
    "OBJECTID": "264",
    "NAME": "170th St",
    "the_geom": "POINT (-73.91779099745928 40.84007499993004)",
    "LINE": "4",
    "NOTES": "4-all times"
  },
  {
    "OBJECTID": "274",
    "NAME": "Mosholu Pkwy",
    "the_geom": "POINT (-73.88465499988732 40.87974999947229)",
    "LINE": "4",
    "NOTES": "4-all times"
  },
  {
    "OBJECTID": "291",
    "NAME": "167th St",
    "the_geom": "POINT (-73.92139999784426 40.83553699933672)",
    "LINE": "4",
    "NOTES": "4-all times"
  },
  {
    "OBJECTID": "407",
    "NAME": "183rd St",
    "the_geom": "POINT (-73.90387900151532 40.85840700040842)",
    "LINE": "4",
    "NOTES": "4-all times"
  },
  {
    "OBJECTID": "408",
    "NAME": "Fordham Rd",
    "the_geom": "POINT (-73.90103399921699 40.86280299988937)",
    "LINE": "4",
    "NOTES": "4-all times"
  },
  {
    "OBJECTID": "456",
    "NAME": "Woodlawn",
    "the_geom": "POINT (-73.87875099990931 40.886037000253324)",
    "LINE": "4",
    "NOTES": "4-all times"
  },
  {
    "OBJECTID": "125",
    "NAME": "Morris Park",
    "the_geom": "POINT (-73.86049500117254 40.85436399966426)",
    "LINE": "5",
    "NOTES": "5-all times"
  },
  {
    "OBJECTID": "126",
    "NAME": "Pelham Pkwy",
    "the_geom": "POINT (-73.85535900043564 40.858984999820116)",
    "LINE": "5",
    "NOTES": "5-all times"
  },
  {
    "OBJECTID": "277",
    "NAME": "Baychester Ave",
    "the_geom": "POINT (-73.83859099802153 40.87866300037311)",
    "LINE": "5",
    "NOTES": "5-all times"
  },
  {
    "OBJECTID": "278",
    "NAME": "Eastchester - Dyre Ave",
    "the_geom": "POINT (-73.8308340021742 40.88829999901007)",
    "LINE": "5",
    "NOTES": "5-all times"
  },
  {
    "OBJECTID": "284",
    "NAME": "Gun Hill Rd",
    "the_geom": "POINT (-73.84638400151765 40.86952599962676)",
    "LINE": "5",
    "NOTES": "5-all times"
  },
  {
    "OBJECTID": "50",
    "NAME": "E 149th St",
    "the_geom": "POINT (-73.90409799875945 40.81211799827203)",
    "LINE": "6",
    "NOTES": "6-all times"
  },
  {
    "OBJECTID": "51",
    "NAME": "Morrison Av - Soundview",
    "the_geom": "POINT (-73.87451599929486 40.82952100156747)",
    "LINE": "6",
    "NOTES": "6-all times"
  },
  {
    "OBJECTID": "52",
    "NAME": "Whitlock Ave",
    "the_geom": "POINT (-73.8862829985325 40.82652500055904)",
    "LINE": "6",
    "NOTES": "6-all times"
  },
  {
    "OBJECTID": "53",
    "NAME": "St Lawrence Ave",
    "the_geom": "POINT (-73.86761799923673 40.8315090005233)",
    "LINE": "6",
    "NOTES": "6-all times"
  },
  {
    "OBJECTID": "249",
    "NAME": "Elder Ave",
    "the_geom": "POINT (-73.87915899874777 40.82858400108929)",
    "LINE": "6",
    "NOTES": "6-all times"
  },
  {
    "OBJECTID": "250",
    "NAME": "Longwood Ave",
    "the_geom": "POINT (-73.89643499897414 40.816103999972405)",
    "LINE": "6",
    "NOTES": "6-all times"
  },
  {
    "OBJECTID": "255",
    "NAME": "Cypress Ave",
    "the_geom": "POINT (-73.91404199994753 40.8053680007636)",
    "LINE": "6",
    "NOTES": "6-all times"
  },
  {
    "OBJECTID": "258",
    "NAME": "E 143rd St - St Mary's St",
    "the_geom": "POINT (-73.90765699936489 40.80871900090143)",
    "LINE": "6",
    "NOTES": "6-all times"
  },
  {
    "OBJECTID": "292",
    "NAME": "Brook Ave",
    "the_geom": "POINT (-73.91923999909432 40.80756599987699)",
    "LINE": "6",
    "NOTES": "6-all times"
  },
  {
    "OBJECTID": "189",
    "NAME": "103rd St - Corona Plaza",
    "the_geom": "POINT (-73.86269999830412 40.749865000555545)",
    "LINE": "7",
    "NOTES": "7-all times"
  },
  {
    "OBJECTID": "190",
    "NAME": "111th St",
    "the_geom": "POINT (-73.85533399834884 40.75172999941711)",
    "LINE": "7",
    "NOTES": "7-all times"
  },
  {
    "OBJECTID": "230",
    "NAME": "69th St",
    "the_geom": "POINT (-73.8964029993185 40.746324999410284)",
    "LINE": "7",
    "NOTES": "7-all times"
  },
  {
    "OBJECTID": "231",
    "NAME": "74th St - Broadway",
    "the_geom": "POINT (-73.8912051289911 40.746867573829114)",
    "LINE": "7",
    "NOTES": "7-all times"
  },
  {
    "OBJECTID": "236",
    "NAME": "52nd St",
    "the_geom": "POINT (-73.91254899891254 40.744149001021576)",
    "LINE": "7",
    "NOTES": "7-all times"
  },
  {
    "OBJECTID": "239",
    "NAME": "46th St",
    "the_geom": "POINT (-73.91843500103973 40.74313200060382)",
    "LINE": "7",
    "NOTES": "7-all times"
  },
  {
    "OBJECTID": "240",
    "NAME": "82nd St - Jackson Hts",
    "the_geom": "POINT (-73.88369700071884 40.747658999559135)",
    "LINE": "7",
    "NOTES": "7-all times"
  },
  {
    "OBJECTID": "241",
    "NAME": "90th St - Elmhurst Av",
    "the_geom": "POINT (-73.87661299986985 40.74840800060913)",
    "LINE": "7",
    "NOTES": "7-all times"
  },
  {
    "OBJECTID": "293",
    "NAME": "33rd St",
    "the_geom": "POINT (-73.93099699953838 40.74458699983993)",
    "LINE": "7",
    "NOTES": "7-all times"
  },
  {
    "OBJECTID": "294",
    "NAME": "40th St",
    "the_geom": "POINT (-73.9240159984882 40.74378100149132)",
    "LINE": "7",
    "NOTES": "7-all times"
  },
  {
    "OBJECTID": "3",
    "NAME": "50th St",
    "the_geom": "POINT (-73.98384899986625 40.76172799961419)",
    "LINE": "1-2",
    "NOTES": "1-all times, 2-nights"
  },
  {
    "OBJECTID": "86",
    "NAME": "86th St",
    "the_geom": "POINT (-73.97621799859327 40.78864400073892)",
    "LINE": "1-2",
    "NOTES": "1-all times, 2-nights"
  },
  {
    "OBJECTID": "88",
    "NAME": "66th St - Lincoln Ctr",
    "the_geom": "POINT (-73.98220899995783 40.77344000052039)",
    "LINE": "1-2",
    "NOTES": "1-all times, 2-nights"
  },
  {
    "OBJECTID": "90",
    "NAME": "Canal St",
    "the_geom": "POINT (-74.0062770001748 40.72285399778783)",
    "LINE": "1-2",
    "NOTES": "1-all times, 2-nights"
  },
  {
    "OBJECTID": "94",
    "NAME": "59th St - Columbus Circle",
    "the_geom": "POINT (-73.98192900232715 40.76824700063689)",
    "LINE": "1-2",
    "NOTES": "1-all times, 2-nights"
  },
  {
    "OBJECTID": "96",
    "NAME": "23rd St",
    "the_geom": "POINT (-73.9956570016487 40.74408099989751)",
    "LINE": "1-2",
    "NOTES": "1-all times, 2-nights"
  },
  {
    "OBJECTID": "97",
    "NAME": "Houston St",
    "the_geom": "POINT (-74.00536700180581 40.728251000730204)",
    "LINE": "1-2",
    "NOTES": "1-all times, 2-nights"
  },
  {
    "OBJECTID": "193",
    "NAME": "79th St",
    "the_geom": "POINT (-73.97991700056134 40.78393399959032)",
    "LINE": "1-2",
    "NOTES": "1-all times, 2-nights"
  },
  {
    "OBJECTID": "195",
    "NAME": "Christopher St - Sheridan Sq",
    "the_geom": "POINT (-74.00290599855235 40.73342200104225)",
    "LINE": "1-2",
    "NOTES": "1-all times, 2-nights"
  },
  {
    "OBJECTID": "199",
    "NAME": "28th St",
    "the_geom": "POINT (-73.99336500134324 40.74721499918219)",
    "LINE": "1-2",
    "NOTES": "1-all times, 2-nights"
  },
  {
    "OBJECTID": "203",
    "NAME": "18th St",
    "the_geom": "POINT (-73.99787100060406 40.741039999802105)",
    "LINE": "1-2",
    "NOTES": "1-all times, 2-nights"
  },
  {
    "OBJECTID": "464",
    "NAME": "Franklin St",
    "the_geom": "POINT (-74.00688600277107 40.719318001302135)",
    "LINE": "1-2",
    "NOTES": "1-all times, 2-nights"
  },
  {
    "OBJECTID": "158",
    "NAME": "96th St",
    "the_geom": "POINT (-73.97232299915696 40.79391900121471)",
    "LINE": "1-2-3",
    "NOTES": "1,2,3-all times"
  },
  {
    "OBJECTID": "162",
    "NAME": "72nd St",
    "the_geom": "POINT (-73.98197000159583 40.77845300068614)",
    "LINE": "1-2-3",
    "NOTES": "1,2,3-all times"
  },
  {
    "OBJECTID": "358",
    "NAME": "34th St - Penn Station",
    "the_geom": "POINT (-73.99105699913983 40.75037300003949)",
    "LINE": "1-2-3",
    "NOTES": "1,2,3-all times"
  },
  {
    "OBJECTID": "359",
    "NAME": "Times Sq - 42nd St",
    "the_geom": "POINT (-73.98749500051885 40.75528999995681)",
    "LINE": "1-2-3",
    "NOTES": "1,2,3-all times"
  },
  {
    "OBJECTID": "404",
    "NAME": "Chambers St",
    "the_geom": "POINT (-74.00926600170112 40.71547800011327)",
    "LINE": "1-2-3",
    "NOTES": "1,2-all times, 3-all times exc nights"
  },
  {
    "OBJECTID": "439",
    "NAME": "14th St",
    "the_geom": "POINT (-74.00020100063497 40.737825999728116)",
    "LINE": "1-2-3",
    "NOTES": "1,2-all times, 3-all times exc nights"
  },
  {
    "OBJECTID": "160",
    "NAME": "Central Park North (110th St)",
    "the_geom": "POINT (-73.95182200176913 40.79907499977324)",
    "LINE": "2-3",
    "NOTES": "2,3-all times"
  },
  {
    "OBJECTID": "168",
    "NAME": "125th St",
    "the_geom": "POINT (-73.94549500011411 40.807753999182815)",
    "LINE": "2-3",
    "NOTES": "2,3-all times"
  },
  {
    "OBJECTID": "169",
    "NAME": "135th St",
    "the_geom": "POINT (-73.94077000106708 40.8142290003391)",
    "LINE": "2-3",
    "NOTES": "2,3-all times"
  },
  {
    "OBJECTID": "170",
    "NAME": "116th St",
    "the_geom": "POINT (-73.94962500096905 40.802097999133004)",
    "LINE": "2-3",
    "NOTES": "2,3-all times"
  },
  {
    "OBJECTID": "402",
    "NAME": "Fulton St",
    "the_geom": "POINT (-74.00657099970202 40.70941599925865)",
    "LINE": "2-3",
    "NOTES": "2-all times, 3-all times exc nights"
  },
  {
    "OBJECTID": "403",
    "NAME": "Park Pl",
    "the_geom": "POINT (-74.00881099997359 40.713050999077694)",
    "LINE": "2-3",
    "NOTES": "2-all times, 3-all times exc nights"
  },
  {
    "OBJECTID": "405",
    "NAME": "Hoyt St",
    "the_geom": "POINT (-73.98506379575646 40.69054418535472)",
    "LINE": "2-3",
    "NOTES": "2-all times, 3-all times exc nights"
  },
  {
    "OBJECTID": "406",
    "NAME": "Borough Hall",
    "the_geom": "POINT (-73.98999799960687 40.693218999611084)",
    "LINE": "2-3",
    "NOTES": "2-all times, 3-all times exc nights"
  },
  {
    "OBJECTID": "430",
    "NAME": "Wall St",
    "the_geom": "POINT (-74.00909999844257 40.706820999753376)",
    "LINE": "2-3",
    "NOTES": "2-all times, 3-all times exc nights"
  },
  {
    "OBJECTID": "446",
    "NAME": "Clark St",
    "the_geom": "POINT (-73.99308599821961 40.69746599996469)",
    "LINE": "2-3",
    "NOTES": "2-all times, 3-all times exc nights"
  },
  {
    "OBJECTID": "4",
    "NAME": "Bergen St",
    "the_geom": "POINT (-73.97499915116808 40.68086213682956)",
    "LINE": "2-3-4",
    "NOTES": "4-nights, 3-all other times, 2-all times"
  },
  {
    "OBJECTID": "115",
    "NAME": "Grand Army Plaza",
    "the_geom": "POINT (-73.9709563319228 40.6752946951032)",
    "LINE": "2-3-4",
    "NOTES": "4-nights, 3-all other times, 2-all times"
  },
  {
    "OBJECTID": "129",
    "NAME": "Eastern Pkwy - Bklyn Museum",
    "the_geom": "POINT (-73.96422203748425 40.67203223545925)",
    "LINE": "2-3-4",
    "NOTES": "4-nights, 3-all other times, 2-all times"
  },
  {
    "OBJECTID": "42",
    "NAME": "Franklin Ave",
    "the_geom": "POINT (-73.9580997367769 40.67076515344894)",
    "LINE": "2-3-4-5",
    "NOTES": "2,4-all times, 3-all times exc nights, 5-weekdays"
  },
  {
    "OBJECTID": "116",
    "NAME": "Atlantic Av - Barclay's Center",
    "the_geom": "POINT (-73.97754993539385 40.68442016526762)",
    "LINE": "2-3-4-5",
    "NOTES": "2,4-all times, 3-all times exc nights, 5-weekdays"
  },
  {
    "OBJECTID": "128",
    "NAME": "Nevins St",
    "the_geom": "POINT (-73.98040679874578 40.68831058019022)",
    "LINE": "2-3-4-5",
    "NOTES": "2,4-all times, 3-all times exc nights, 5-weekdays"
  },
  {
    "OBJECTID": "18",
    "NAME": "Freeman St",
    "the_geom": "POINT (-73.89175225349464 40.829987446384116)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-all times exc nights, skips rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "19",
    "NAME": "Intervale Ave",
    "the_geom": "POINT (-73.89661738461646 40.822142131170786)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-all times exc nights, skips rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "39",
    "NAME": "Pelham Pkwy",
    "the_geom": "POINT (-73.86748067850041 40.8571924091606)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "40",
    "NAME": "Gun Hill Rd",
    "the_geom": "POINT (-73.86613410538703 40.877839385172024)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "41",
    "NAME": "Nereid Ave (238 St)",
    "the_geom": "POINT (-73.8543153107622 40.898286515575286)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "43",
    "NAME": "Simpson St",
    "the_geom": "POINT (-73.89306639507903 40.823976841237396)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-all times exc nights, skips rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "44",
    "NAME": "Bronx Park East",
    "the_geom": "POINT (-73.86835609178098 40.848768666338934)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "45",
    "NAME": "Winthrop St",
    "the_geom": "POINT (-73.95007934590994 40.65665931376077)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-weekdays"
  },
  {
    "OBJECTID": "87",
    "NAME": "233rd St",
    "the_geom": "POINT (-73.85736239521543 40.89314324138378)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "130",
    "NAME": "Beverly Rd",
    "the_geom": "POINT (-73.94884798381702 40.64512351894373)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-weekdays"
  },
  {
    "OBJECTID": "131",
    "NAME": "Church Ave",
    "the_geom": "POINT (-73.94945514035334 40.6508606878022)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-weekdays"
  },
  {
    "OBJECTID": "132",
    "NAME": "Newkirk Ave",
    "the_geom": "POINT (-73.94829990822407 40.63999124275311)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-weekdays"
  },
  {
    "OBJECTID": "133",
    "NAME": "Brooklyn College - Flatbush Ave",
    "the_geom": "POINT (-73.94754120734406 40.63284240700742)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-weekdays"
  },
  {
    "OBJECTID": "134",
    "NAME": "Sterling St",
    "the_geom": "POINT (-73.95072891124937 40.6627729934283)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-weekdays"
  },
  {
    "OBJECTID": "248",
    "NAME": "225th St",
    "the_geom": "POINT (-73.86021461772737 40.88802825863786)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "253",
    "NAME": "Jackson Ave",
    "the_geom": "POINT (-73.9077019387083 40.81643746686396)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-all times exc nights, skips rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "254",
    "NAME": "Prospect Ave",
    "the_geom": "POINT (-73.90177778730917 40.81948726483844)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-all times exc nights, skips rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "256",
    "NAME": "174th St",
    "the_geom": "POINT (-73.88769359812888 40.837195550170605)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-all times exc nights, skips rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "257",
    "NAME": "Allerton Ave",
    "the_geom": "POINT (-73.86723422851625 40.86548337793927)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "272",
    "NAME": "West Farms Sq - E Tremont Av",
    "the_geom": "POINT (-73.87996127877184 40.84020763241799)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-all times exc nights, skips rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "273",
    "NAME": "219th St",
    "the_geom": "POINT (-73.8625097078866 40.883887974625274)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "276",
    "NAME": "Burke Ave",
    "the_geom": "POINT (-73.86705361747603 40.87125880254771)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "285",
    "NAME": "E 180th St",
    "the_geom": "POINT (-73.87334609510884 40.8418630412186)",
    "LINE": "2-5",
    "NOTES": "2,5-all times"
  },
  {
    "OBJECTID": "289",
    "NAME": "149th St - Grand Concourse",
    "the_geom": "POINT (-73.92672247438611 40.81833014409742)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-all times exc nights"
  },
  {
    "OBJECTID": "290",
    "NAME": "3rd Ave - 149th St",
    "the_geom": "POINT (-73.91779152760981 40.816029252510006)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5-all times exc nights"
  },
  {
    "OBJECTID": "455",
    "NAME": "President St",
    "the_geom": "POINT (-73.95058920022207 40.667883603536815)",
    "LINE": "2-5",
    "NOTES": "2-all times, 5 weekdays"
  },
  {
    "OBJECTID": "5",
    "NAME": "Pennsylvania Ave",
    "the_geom": "POINT (-73.89488591154061 40.66471445143568)",
    "LINE": "3-4",
    "NOTES": "4-nights, 3-all other times"
  },
  {
    "OBJECTID": "46",
    "NAME": "Van Siclen Ave",
    "the_geom": "POINT (-73.88940491730106 40.665517963059635)",
    "LINE": "3-4",
    "NOTES": "4-nights, 3-all other times"
  },
  {
    "OBJECTID": "135",
    "NAME": "Crown Hts - Utica Ave",
    "the_geom": "POINT (-73.93293256081851 40.66897831107809)",
    "LINE": "3-4",
    "NOTES": "3-all times exc nights, 4-all times"
  },
  {
    "OBJECTID": "136",
    "NAME": "Kingston Ave",
    "the_geom": "POINT (-73.94215978392963 40.66948144864978)",
    "LINE": "3-4",
    "NOTES": "4-nights, 3-all other times"
  },
  {
    "OBJECTID": "213",
    "NAME": "New Lots Ave",
    "the_geom": "POINT (-73.88411070800329 40.6663149325969)",
    "LINE": "3-4",
    "NOTES": "4-nights, 3-all other times"
  },
  {
    "OBJECTID": "217",
    "NAME": "Junius St",
    "the_geom": "POINT (-73.90244864183562 40.66358900181724)",
    "LINE": "3-4",
    "NOTES": "4-nights, 3-all other times"
  },
  {
    "OBJECTID": "218",
    "NAME": "Rockaway Ave",
    "the_geom": "POINT (-73.90895833584449 40.66261748815223)",
    "LINE": "3-4",
    "NOTES": "4-nights, 3-all other times"
  },
  {
    "OBJECTID": "221",
    "NAME": "Saratoga Ave",
    "the_geom": "POINT (-73.91633025007947 40.6615297898075)",
    "LINE": "3-4",
    "NOTES": "4-nights, 3-all other times"
  },
  {
    "OBJECTID": "222",
    "NAME": "Sutter Ave - Rutland Road",
    "the_geom": "POINT (-73.92252118536001 40.66476678877493)",
    "LINE": "3-4",
    "NOTES": "4-nights, 3-all other times"
  },
  {
    "OBJECTID": "445",
    "NAME": "Nostrand Ave",
    "the_geom": "POINT (-73.9504262489579 40.66993815093054)",
    "LINE": "3-4",
    "NOTES": "4-nights, 3-all other times"
  },
  {
    "OBJECTID": "123",
    "NAME": "Borough Hall",
    "the_geom": "POINT (-73.99015100090539 40.692403999991036)",
    "LINE": "4-5",
    "NOTES": "4-all times, 5-weekdays"
  },
  {
    "OBJECTID": "141",
    "NAME": "138th St - Grand Concourse",
    "the_geom": "POINT (-73.92984899935611 40.81322399958908)",
    "LINE": "4-5",
    "NOTES": "4-all times, skips rush hours AM southbound, PM northbound, 5-all times exc nights"
  },
  {
    "OBJECTID": "419",
    "NAME": "Bowling Green",
    "the_geom": "POINT (-74.01400799803432 40.70491399928076)",
    "LINE": "4-5",
    "NOTES": "4-all times, 5-all times exc nights"
  },
  {
    "OBJECTID": "420",
    "NAME": "Wall St",
    "the_geom": "POINT (-74.01186199860112 40.70755700086603)",
    "LINE": "4-5",
    "NOTES": "4-all times, 5-weekdays"
  },
  {
    "OBJECTID": "427",
    "NAME": "Fulton St",
    "the_geom": "POINT (-74.00950899856461 40.710367998822136)",
    "LINE": "4-5",
    "NOTES": "4-all times, 5-weekdays"
  },
  {
    "OBJECTID": "29",
    "NAME": "Brooklyn Bridge - City Hall",
    "the_geom": "POINT (-74.0041310005885 40.713064999433136)",
    "LINE": "4-5-6-6 Express",
    "NOTES": "4,6-all times, 5-all times exc nights, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "31",
    "NAME": "Grand Central - 42nd St",
    "the_geom": "POINT (-73.9767132992584 40.75180742981634)",
    "LINE": "4-5-6-6 Express",
    "NOTES": "4,6-all times, 5-all times exc nights, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "49",
    "NAME": "Lexington Ave - 59th St",
    "the_geom": "POINT (-73.9679670004732 40.762526000304575)",
    "LINE": "4-5-6-6 Express",
    "NOTES": "4,6-all times, 5-all times exc nights, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "105",
    "NAME": "Union Sq - 14th St",
    "the_geom": "POINT (-73.98995099881881 40.734673000996125)",
    "LINE": "4-5-6-6 Express",
    "NOTES": "4,6-all times, 5-all times exc nights, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "451",
    "NAME": "86th St",
    "the_geom": "POINT (-73.95558899985132 40.77949199820952)",
    "LINE": "4-5-6-6 Express",
    "NOTES": "4,6-all times, 5-all times exc nights, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "468",
    "NAME": "125th St",
    "the_geom": "POINT (-73.93759400055725 40.804138000587244)",
    "LINE": "4-5-6-6 Express",
    "NOTES": "4,6-all times, 5-all times exc nights, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "1",
    "NAME": "Astor Pl",
    "the_geom": "POINT (-73.99106999861966 40.73005400028978)",
    "LINE": "4-6-6 Express",
    "NOTES": "4 nights, 6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "2",
    "NAME": "Canal St",
    "the_geom": "POINT (-74.00019299927328 40.71880300107709)",
    "LINE": "4-6-6 Express",
    "NOTES": "4 nights, 6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "32",
    "NAME": "33rd St",
    "the_geom": "POINT (-73.98207600148947 40.74608099909145)",
    "LINE": "4-6-6 Express",
    "NOTES": "4 nights, 6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "33",
    "NAME": "96th St",
    "the_geom": "POINT (-73.9510700015425 40.78567199998607)",
    "LINE": "4-6-6 Express",
    "NOTES": "4 nights, 6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "34",
    "NAME": "77th St",
    "the_geom": "POINT (-73.95987399886047 40.77362000074615)",
    "LINE": "4-6-6 Express",
    "NOTES": "4 nights, 6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "85",
    "NAME": "51st St",
    "the_geom": "POINT (-73.97192000069982 40.75710699989316)",
    "LINE": "4-6-6 Express",
    "NOTES": "4 nights, 6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "92",
    "NAME": "23rd St",
    "the_geom": "POINT (-73.98659900207888 40.739864000474604)",
    "LINE": "4-6-6 Express",
    "NOTES": "4 nights, 6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "102",
    "NAME": "68th St - Hunter College",
    "the_geom": "POINT (-73.96387000158042 40.76814100049679)",
    "LINE": "4-6-6 Express",
    "NOTES": "4 nights, 6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "200",
    "NAME": "28th St",
    "the_geom": "POINT (-73.98426400110407 40.743069999259035)",
    "LINE": "4-6-6 Express",
    "NOTES": "4 nights, 6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "450",
    "NAME": "110th St",
    "the_geom": "POINT (-73.94424999687163 40.795020000113105)",
    "LINE": "4-6-6 Express",
    "NOTES": "4 nights, 6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "457",
    "NAME": "Bleecker St",
    "the_geom": "POINT (-73.99465900006331 40.72591466682659)",
    "LINE": "4-6-6 Express",
    "NOTES": "4 nights, 6-all times, 6 Express-weekdays PM"
  },
  {
    "OBJECTID": "458",
    "NAME": "103rd St",
    "the_geom": "POINT (-73.94747800152219 40.79060000008452)",
    "LINE": "4-6-6 Express",
    "NOTES": "4 nights, 6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "462",
    "NAME": "116th St",
    "the_geom": "POINT (-73.9416169983714 40.7986290002001)",
    "LINE": "4-6-6 Express",
    "NOTES": "4 nights, 6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "467",
    "NAME": "Spring St",
    "the_geom": "POINT (-73.99714100006673 40.72230099999366)",
    "LINE": "4-6-6 Express",
    "NOTES": "4 nights, 6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "26",
    "NAME": "Buhre Ave",
    "the_geom": "POINT (-73.83256900003744 40.846809998885504)",
    "LINE": "6-6 Express",
    "NOTES": "6 Express-weekdays AM southbound, PM northbound, 6-all other times"
  },
  {
    "OBJECTID": "27",
    "NAME": "3rd Ave - 138th St",
    "the_geom": "POINT (-73.92613800014134 40.81047600117261)",
    "LINE": "6-6 Express",
    "NOTES": "6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "28",
    "NAME": "Castle Hill Ave",
    "the_geom": "POINT (-73.85122199961472 40.83425499825462)",
    "LINE": "6-6 Express",
    "NOTES": "6 Express-weekdays AM southbound, PM northbound, 6-all other times"
  },
  {
    "OBJECTID": "30",
    "NAME": "Zerega Ave",
    "the_geom": "POINT (-73.8470359987544 40.836488000608156)",
    "LINE": "6-6 Express",
    "NOTES": "6 Express-weekdays AM southbound, PM northbound, 6-all other times"
  },
  {
    "OBJECTID": "89",
    "NAME": "Hunts Point Ave",
    "the_geom": "POINT (-73.89054900017344 40.82094799852307)",
    "LINE": "6-6 Express",
    "NOTES": "6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "91",
    "NAME": "Middletown Rd",
    "the_geom": "POINT (-73.83632199755944 40.84386300128381)",
    "LINE": "6-6 Express",
    "NOTES": "6 Express-weekdays AM southbound, PM northbound, 6-all other times"
  },
  {
    "OBJECTID": "201",
    "NAME": "Pelham Bay Park",
    "the_geom": "POINT (-73.82812100059289 40.85246199951662)",
    "LINE": "6-6 Express",
    "NOTES": "6 Express-weekdays AM southbound, PM northbound, 6-all other times"
  },
  {
    "OBJECTID": "202",
    "NAME": "Westchester Sq - E Tremont Ave",
    "the_geom": "POINT (-73.84295199925012 40.839892001013915)",
    "LINE": "6-6 Express",
    "NOTES": "6 Express-weekdays AM southbound, PM northbound, 6-all other times"
  },
  {
    "OBJECTID": "463",
    "NAME": "Parkchester",
    "the_geom": "POINT (-73.86081600108396 40.83322599927859)",
    "LINE": "6-6 Express",
    "NOTES": "6-all times, 6 Express-weekdays AM southbound, PM northbound"
  },
  {
    "OBJECTID": "23",
    "NAME": "Mets - Willets Point",
    "the_geom": "POINT (-73.8456249984179 40.75462199881262)",
    "LINE": "7-7 Express",
    "NOTES": "7-all times, 7 Express-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "24",
    "NAME": "Junction Blvd",
    "the_geom": "POINT (-73.86952700103515 40.74914499948836)",
    "LINE": "7-7 Express",
    "NOTES": "7-all times, 7 Express-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "25",
    "NAME": "Flushing - Main St",
    "the_geom": "POINT (-73.83003000262508 40.75959999915012)",
    "LINE": "7-7 Express",
    "NOTES": "7-all times, 7 Express-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "54",
    "NAME": "Woodside - 61st St",
    "the_geom": "POINT (-73.90298400173006 40.745630001138395)",
    "LINE": "7-7 Express",
    "NOTES": "7-all times, 7 Express-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "93",
    "NAME": "Court Sq",
    "the_geom": "POINT (-73.94526400039679 40.74702299889643)",
    "LINE": "7-7 Express",
    "NOTES": "7-all times, 7 Express-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "95",
    "NAME": "Hunters Point Ave",
    "the_geom": "POINT (-73.9489160009391 40.74221599986316)",
    "LINE": "7-7 Express",
    "NOTES": "7-all times, 7 Express-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "101",
    "NAME": "Vernon Blvd - Jackson Ave",
    "the_geom": "POINT (-73.95358099875249 40.74262599969749)",
    "LINE": "7-7 Express",
    "NOTES": "7-all times, 7 Express-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "197",
    "NAME": "Times Sq - 42nd St",
    "the_geom": "POINT (-73.98769099825152 40.755477001982506)",
    "LINE": "7-7 Express",
    "NOTES": "7-all times, 7 Express-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "204",
    "NAME": "Grand Central - 42nd St",
    "the_geom": "POINT (-73.97604100111508 40.751431000286864)",
    "LINE": "7-7 Express",
    "NOTES": "7-all times, 7 Express-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "466",
    "NAME": "5th Ave - Bryant Pk",
    "the_geom": "POINT (-73.98196299856706 40.75382100064824)",
    "LINE": "7-7 Express",
    "NOTES": "7-all times, 7 Express-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "470",
    "NAME": "34th St - Hudson Yards",
    "the_geom": "POINT (-74.00219709442206 40.75544635961596)",
    "LINE": "7-7 Express",
    "NOTES": "7-all times, 7 Express-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "103",
    "NAME": "Queensboro Plz",
    "the_geom": "POINT (-73.9401635351909 40.750635651014804)",
    "LINE": "7-7 Express-N-W",
    "NOTES": "7,N-all times, 7 Express-rush hours AM westbound, PM eastbound, W part time"
  },
  {
    "OBJECTID": "55",
    "NAME": "Far Rockaway - Mott Ave",
    "the_geom": "POINT (-73.75540499924732 40.603995001687544)",
    "LINE": "A",
    "NOTES": "A-all times"
  },
  {
    "OBJECTID": "124",
    "NAME": "Aqueduct Racetrack",
    "the_geom": "POINT (-73.83591899965162 40.672096999172844)",
    "LINE": "A",
    "NOTES": "A-to Manhattan only, racing days only"
  },
  {
    "OBJECTID": "180",
    "NAME": "175th St",
    "the_geom": "POINT (-73.93970399761596 40.84739100072403)",
    "LINE": "A",
    "NOTES": "A-all times"
  },
  {
    "OBJECTID": "181",
    "NAME": "Beach 44th St",
    "the_geom": "POINT (-73.77601299999507 40.59294299908617)",
    "LINE": "A",
    "NOTES": "A-all times"
  },
  {
    "OBJECTID": "182",
    "NAME": "Beach 60th St",
    "the_geom": "POINT (-73.7885219980118 40.59237400121235)",
    "LINE": "A",
    "NOTES": "A-all times"
  },
  {
    "OBJECTID": "185",
    "NAME": "Beach 36th St",
    "the_geom": "POINT (-73.76817499939688 40.59539800166876)",
    "LINE": "A",
    "NOTES": "A-all times"
  },
  {
    "OBJECTID": "186",
    "NAME": "Beach 25th St",
    "the_geom": "POINT (-73.76135299762073 40.60006600105881)",
    "LINE": "A",
    "NOTES": "A-all times"
  },
  {
    "OBJECTID": "205",
    "NAME": "Beach 67th St",
    "the_geom": "POINT (-73.7969239998421 40.59092700078133)",
    "LINE": "A",
    "NOTES": "A-all times"
  },
  {
    "OBJECTID": "242",
    "NAME": "Howard Beach - JFK Airport",
    "the_geom": "POINT (-73.83030100071032 40.66047600004959)",
    "LINE": "A",
    "NOTES": "A-all times"
  },
  {
    "OBJECTID": "243",
    "NAME": "Aqueduct - North Conduit Av",
    "the_geom": "POINT (-73.83405799948723 40.668234001699815)",
    "LINE": "A",
    "NOTES": "A-all times"
  },
  {
    "OBJECTID": "270",
    "NAME": "Inwood - 207th St",
    "the_geom": "POINT (-73.91989900100465 40.86807199999737)",
    "LINE": "A",
    "NOTES": "A-all times"
  },
  {
    "OBJECTID": "396",
    "NAME": "181st St",
    "the_geom": "POINT (-73.93796900205011 40.851694999744616)",
    "LINE": "A",
    "NOTES": "A-all times"
  },
  {
    "OBJECTID": "397",
    "NAME": "190th St",
    "the_geom": "POINT (-73.93417999964333 40.85902199892482)",
    "LINE": "A",
    "NOTES": "A-all times"
  },
  {
    "OBJECTID": "431",
    "NAME": "Dyckman St",
    "the_geom": "POINT (-73.92727099960726 40.865490998968916)",
    "LINE": "A",
    "NOTES": "A-all times"
  },
  {
    "OBJECTID": "7",
    "NAME": "Cathedral Pkwy (110th St)",
    "the_geom": "POINT (-73.95806670661364 40.800581558114956)",
    "LINE": "A-B-C",
    "NOTES": "A-nights, B-weekdays and evenings, C-all times exc nights"
  },
  {
    "OBJECTID": "56",
    "NAME": "72nd St",
    "the_geom": "POINT (-73.976336575218 40.77551939729258)",
    "LINE": "A-B-C",
    "NOTES": "A-nights, B-weekdays and evenings, C-all times exc nights"
  },
  {
    "OBJECTID": "57",
    "NAME": "96th St",
    "the_geom": "POINT (-73.96460245687166 40.79161879767014)",
    "LINE": "A-B-C",
    "NOTES": "A-nights, B-weekdays and evenings, C-all times exc nights"
  },
  {
    "OBJECTID": "161",
    "NAME": "103rd St",
    "the_geom": "POINT (-73.96137008267617 40.796060739904526)",
    "LINE": "A-B-C",
    "NOTES": "A-nights, B-weekdays and evenings, C-all times exc nights"
  },
  {
    "OBJECTID": "163",
    "NAME": "81st St",
    "the_geom": "POINT (-73.97209794937208 40.78134608418206)",
    "LINE": "A-B-C",
    "NOTES": "A-nights, B-weekdays and evenings, C-all times exc nights"
  },
  {
    "OBJECTID": "165",
    "NAME": "86th St",
    "the_geom": "POINT (-73.96882849429672 40.78582304678557)",
    "LINE": "A-B-C",
    "NOTES": "A-nights, B-weekdays and evenings, C-all times exc nights"
  },
  {
    "OBJECTID": "398",
    "NAME": "116th St",
    "the_geom": "POINT (-73.95479778057312 40.80505813344211)",
    "LINE": "A-B-C",
    "NOTES": "A-nights, B-weekdays and evenings, C-all times exc nights"
  },
  {
    "OBJECTID": "440",
    "NAME": "135th St",
    "the_geom": "POINT (-73.94753480879213 40.817905559212676)",
    "LINE": "A-B-C",
    "NOTES": "A-nights, B-weekdays and evenings, C-all times exc nights"
  },
  {
    "OBJECTID": "295",
    "NAME": "145th St",
    "the_geom": "POINT (-73.94408792823116 40.824766360871905)",
    "LINE": "A-B-C-D",
    "NOTES": "A,D-all times, B-weekdays and evenings, C-all times exc nights"
  },
  {
    "OBJECTID": "353",
    "NAME": "59th St - Columbus Circle",
    "the_geom": "POINT (-73.98164872301398 40.768249531776064)",
    "LINE": "A-B-C-D",
    "NOTES": "A,D-all times, B-weekdays and evenings, C-all times exc nights"
  },
  {
    "OBJECTID": "399",
    "NAME": "125th St",
    "the_geom": "POINT (-73.95224799734774 40.811071672994565)",
    "LINE": "A-B-C-D",
    "NOTES": "A,D-all times, B-weekdays and evenings, C-all times exc nights"
  },
  {
    "OBJECTID": "8",
    "NAME": "Kingston - Throop Aves",
    "the_geom": "POINT (-73.94085899871263 40.67991899941601)",
    "LINE": "A-C",
    "NOTES": "A-nights, C-all other times"
  },
  {
    "OBJECTID": "38",
    "NAME": "Ralph Ave",
    "the_geom": "POINT (-73.92078599933306 40.678822000873375)",
    "LINE": "A-C",
    "NOTES": "A-nights, C-all other times"
  },
  {
    "OBJECTID": "58",
    "NAME": "168th St",
    "the_geom": "POINT (-73.93956099985425 40.84071899990795)",
    "LINE": "A-C",
    "NOTES": "A-all times, C-all times exc nights"
  },
  {
    "OBJECTID": "117",
    "NAME": "Rockaway Ave",
    "the_geom": "POINT (-73.91194599726617 40.678339999883505)",
    "LINE": "A-C",
    "NOTES": "A-nights, C-all other times"
  },
  {
    "OBJECTID": "127",
    "NAME": "Nostrand Ave",
    "the_geom": "POINT (-73.95042600099683 40.68043800006226)",
    "LINE": "A-C",
    "NOTES": "A-all times, C-all times exc nights"
  },
  {
    "OBJECTID": "214",
    "NAME": "Van Siclen Ave",
    "the_geom": "POINT (-73.8903580002471 40.67270999906104)",
    "LINE": "A-C",
    "NOTES": "A-nights, C-all other times"
  },
  {
    "OBJECTID": "226",
    "NAME": "Shepherd Ave",
    "the_geom": "POINT (-73.88074999747269 40.6741300014559)",
    "LINE": "A-C",
    "NOTES": "A-nights, C-all other times"
  },
  {
    "OBJECTID": "298",
    "NAME": "Utica Ave",
    "the_geom": "POINT (-73.93072899914027 40.67936399950546)",
    "LINE": "A-C",
    "NOTES": "A-all times, C-all times exc nights"
  },
  {
    "OBJECTID": "360",
    "NAME": "Fulton St",
    "the_geom": "POINT (-74.00762309323994 40.71016216530185)",
    "LINE": "A-C",
    "NOTES": "A-all times, C-all times exc nights"
  },
  {
    "OBJECTID": "361",
    "NAME": "Chambers St",
    "the_geom": "POINT (-74.00858473570133 40.714111000774025)",
    "LINE": "A-C",
    "NOTES": "A-all times, C-all times exc nights"
  },
  {
    "OBJECTID": "385",
    "NAME": "Liberty Ave",
    "the_geom": "POINT (-73.89654800103929 40.67454199987086)",
    "LINE": "A-C",
    "NOTES": "A-nights, C-all other times"
  },
  {
    "OBJECTID": "386",
    "NAME": "Broadway Junction",
    "the_geom": "POINT (-73.90531600055341 40.67833366608023)",
    "LINE": "A-C",
    "NOTES": "A-all times, C-all times exc nights"
  },
  {
    "OBJECTID": "411",
    "NAME": "155th St",
    "the_geom": "POINT (-73.94151400082208 40.83051799929251)",
    "LINE": "A-C",
    "NOTES": "A-nights, C-all other times"
  },
  {
    "OBJECTID": "412",
    "NAME": "163rd St - Amsterdam Av",
    "the_geom": "POINT (-73.93989200188344 40.83601299923096)",
    "LINE": "A-C",
    "NOTES": "A-nights, C-all other times"
  },
  {
    "OBJECTID": "447",
    "NAME": "Franklin Ave",
    "the_geom": "POINT (-73.95684800014614 40.68137966658742)",
    "LINE": "A-C",
    "NOTES": "A-nights, C-all other times"
  },
  {
    "OBJECTID": "448",
    "NAME": "Clinton - Washington Aves",
    "the_geom": "POINT (-73.96583799857275 40.68326299912644)",
    "LINE": "A-C",
    "NOTES": "A-nights, C-all other times"
  },
  {
    "OBJECTID": "453",
    "NAME": "High St",
    "the_geom": "POINT (-73.99053100065458 40.69933699977884)",
    "LINE": "A-C",
    "NOTES": "A-all times, C-all times exc nights"
  },
  {
    "OBJECTID": "454",
    "NAME": "Lafayette Ave",
    "the_geom": "POINT (-73.97394599849406 40.68611300020567)",
    "LINE": "A-C",
    "NOTES": "A-nights, C-all other times"
  },
  {
    "OBJECTID": "206",
    "NAME": "W 4th St - Washington Sq (Upper)",
    "the_geom": "POINT (-74.00049500225435 40.73233799774325)",
    "LINE": "A-C-E",
    "NOTES": "A,E-all times, C-all times exc nights"
  },
  {
    "OBJECTID": "347",
    "NAME": "50th St",
    "the_geom": "POINT (-73.98598400026407 40.76245599925997)",
    "LINE": "A-C-E",
    "NOTES": "A-nights, C-all other times, E-all times"
  },
  {
    "OBJECTID": "362",
    "NAME": "42nd St - Port Authority Bus Term",
    "the_geom": "POINT (-73.98973500085859 40.757307998551504)",
    "LINE": "A-C-E",
    "NOTES": "A,E-all times, C-all times exc nights"
  },
  {
    "OBJECTID": "395",
    "NAME": "Spring St",
    "the_geom": "POINT (-74.00373899843763 40.72622700129312)",
    "LINE": "A-C-E",
    "NOTES": "A-nights, C-all other times, E-all times"
  },
  {
    "OBJECTID": "410",
    "NAME": "Canal St - Holland Tunnel",
    "the_geom": "POINT (-74.0052290023424 40.72082400007119)",
    "LINE": "A-C-E",
    "NOTES": "A,E-all times, C-all times exc nights"
  },
  {
    "OBJECTID": "436",
    "NAME": "23rd St",
    "the_geom": "POINT (-73.99804100117201 40.74590599939995)",
    "LINE": "A-C-E",
    "NOTES": "A-nights, C-all other times, E-all times"
  },
  {
    "OBJECTID": "437",
    "NAME": "34th St - Penn Station",
    "the_geom": "POINT (-73.99339099970578 40.752287000775894)",
    "LINE": "A-C-E",
    "NOTES": "A,E-all times, C-all times exc nights"
  },
  {
    "OBJECTID": "444",
    "NAME": "14th St",
    "the_geom": "POINT (-74.00168999937027 40.740893000193296)",
    "LINE": "A-C-E",
    "NOTES": "A,E-all times, C-all times exc nights"
  },
  {
    "OBJECTID": "368",
    "NAME": "Jay St - MetroTech",
    "the_geom": "POINT (-73.98721815267317 40.692470636847084)",
    "LINE": "A-C-F",
    "NOTES": "A,F-all times, C-all times exc nights"
  },
  {
    "OBJECTID": "367",
    "NAME": "Hoyt - Schermerhorn Sts",
    "the_geom": "POINT (-73.98503624034139 40.68840847580642)",
    "LINE": "A-C-G",
    "NOTES": "A,G-all times, C-all times exc nights"
  },
  {
    "OBJECTID": "459",
    "NAME": "Euclid Ave",
    "the_geom": "POINT (-73.87210600099675 40.675376998239365)",
    "LINE": "A-C-S",
    "NOTES": "S to Ozone Park-Lefferts Blvd-nights, C-all other times, A-all times"
  },
  {
    "OBJECTID": "16",
    "NAME": "Beach 105th St",
    "the_geom": "POINT (-73.82758075034528 40.58326843810286)",
    "LINE": "A-S",
    "NOTES": "A-rush hours AM northbound, PM southbound, S Broad Channel to Rockaway Park-all times"
  },
  {
    "OBJECTID": "17",
    "NAME": "Beach 90th St",
    "the_geom": "POINT (-73.81365140419632 40.58809156457325)",
    "LINE": "A-S",
    "NOTES": "A-rush hours AM northbound, PM southbound, S Broad Channel to Rockaway Park-all times"
  },
  {
    "OBJECTID": "83",
    "NAME": "111th St",
    "the_geom": "POINT (-73.83216299845388 40.68433100001238)",
    "LINE": "A-S",
    "NOTES": "S Euclid Av to Ozone Park-Lefferts Blvd-nights, A-all other times"
  },
  {
    "OBJECTID": "98",
    "NAME": "104th St",
    "the_geom": "POINT (-73.83768300060997 40.681711001091195)",
    "LINE": "A-S",
    "NOTES": "S Euclid Av to Ozone Park-Lefferts Blvd-nights, A-all other times"
  },
  {
    "OBJECTID": "99",
    "NAME": "Broad Channel",
    "the_geom": "POINT (-73.81583268782963 40.60840218069683)",
    "LINE": "A-S",
    "NOTES": "A,S to Rockaway Park-all times"
  },
  {
    "OBJECTID": "104",
    "NAME": "Rockaway Blvd",
    "the_geom": "POINT (-73.8438529979573 40.680428999588415)",
    "LINE": "A-S",
    "NOTES": "A-all times, S Euclid Av to Ozone Park-Lefferts Blvd-nights"
  },
  {
    "OBJECTID": "183",
    "NAME": "Beach 98th St",
    "the_geom": "POINT (-73.82052058959523 40.58538569133279)",
    "LINE": "A-S",
    "NOTES": "A-rush hours AM northbound, PM southbound, S Broad Channel to Rockaway Park-all times"
  },
  {
    "OBJECTID": "184",
    "NAME": "Rockaway Park - Beach 116 St",
    "the_geom": "POINT (-73.83559008701239 40.580955865573515)",
    "LINE": "A-S",
    "NOTES": "A-rush hours AM northbound, PM southbound, S to Broad Channel-all times"
  },
  {
    "OBJECTID": "192",
    "NAME": "Grant Ave",
    "the_geom": "POINT (-73.86504999877702 40.67704400054478)",
    "LINE": "A-S",
    "NOTES": "A-all times, S Euclid Av to Ozone Park-Lefferts Blvd-nights"
  },
  {
    "OBJECTID": "196",
    "NAME": "Ozone Park - Lefferts Blvd",
    "the_geom": "POINT (-73.82579799906613 40.68595099878361)",
    "LINE": "A-S",
    "NOTES": "S to Euclid Av-nights, A-all other times"
  },
  {
    "OBJECTID": "460",
    "NAME": "88th St",
    "the_geom": "POINT (-73.85147000026086 40.67984300135503)",
    "LINE": "A-S",
    "NOTES": "A-all times, S Euclid Av to Ozone Park-Lefferts Blvd-nights"
  },
  {
    "OBJECTID": "465",
    "NAME": "80th St",
    "the_geom": "POINT (-73.85899200206335 40.67937100115432)",
    "LINE": "A-S",
    "NOTES": "A-all times, S Euclid Av to Ozone Park-Lefferts Blvd-nights"
  },
  {
    "OBJECTID": "20",
    "NAME": "182nd-183rd Sts",
    "the_geom": "POINT (-73.90074099998965 40.85609299881864)",
    "LINE": "B-D",
    "NOTES": "B-rush hours, D-all times, skips rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "21",
    "NAME": "174th-175th Sts",
    "the_geom": "POINT (-73.91013600050078 40.84589999983414)",
    "LINE": "B-D",
    "NOTES": "B-rush hours, D-all times, skips rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "22",
    "NAME": "167th St",
    "the_geom": "POINT (-73.91843200082253 40.83376899862797)",
    "LINE": "B-D",
    "NOTES": "B-rush hours, D-all times, skips rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "59",
    "NAME": "Kingsbridge Rd",
    "the_geom": "POINT (-73.8935090000331 40.86697799999945)",
    "LINE": "B-D",
    "NOTES": "B-rush hours, D-all times"
  },
  {
    "OBJECTID": "171",
    "NAME": "Tremont Ave",
    "the_geom": "POINT (-73.90522700122354 40.850409999510234)",
    "LINE": "B-D",
    "NOTES": "B-rush hours, D-all times"
  },
  {
    "OBJECTID": "176",
    "NAME": "170th St",
    "the_geom": "POINT (-73.91339999846983 40.83930599964156)",
    "LINE": "B-D",
    "NOTES": "B-rush hours, D-all times, skips rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "263",
    "NAME": "Fordham Rd",
    "the_geom": "POINT (-73.89774900102401 40.861295998683495)",
    "LINE": "B-D",
    "NOTES": "B-rush hours, D-all times"
  },
  {
    "OBJECTID": "265",
    "NAME": "Bedford Park Blvd",
    "the_geom": "POINT (-73.88713799889574 40.87324399861646)",
    "LINE": "B-D",
    "NOTES": "B-rush hours, D-all times"
  },
  {
    "OBJECTID": "296",
    "NAME": "155th St",
    "the_geom": "POINT (-73.93820899811622 40.8301349999812)",
    "LINE": "B-D",
    "NOTES": "B-rush hours, D-all times, skips rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "297",
    "NAME": "161st St - Yankee Stadium",
    "the_geom": "POINT (-73.92565099775477 40.827904998845845)",
    "LINE": "B-D",
    "NOTES": "B-rush hours, D-all times, skips rush hours AM southbound, PM northbound"
  },
  {
    "OBJECTID": "432",
    "NAME": "Grand St",
    "the_geom": "POINT (-73.99375299913589 40.71826699954992)",
    "LINE": "B-D",
    "NOTES": "B-weekdays and evenings, D-all times"
  },
  {
    "OBJECTID": "348",
    "NAME": "7th Ave",
    "the_geom": "POINT (-73.98169782344476 40.76297015245628)",
    "LINE": "B-D-E",
    "NOTES": "D,E-all times, B-weekdays and evenings"
  },
  {
    "OBJECTID": "60",
    "NAME": "42nd St - Bryant Pk",
    "the_geom": "POINT (-73.98459099904711 40.754184001312545)",
    "LINE": "B-D-F-M",
    "NOTES": "B,M-weekdays and evenings, D,F-all times"
  },
  {
    "OBJECTID": "84",
    "NAME": "W 4th St - Washington Sq (Lower)",
    "the_geom": "POINT (-74.00030814755975 40.732254493367876)",
    "LINE": "B-D-F-M",
    "NOTES": "B,M-weekdays and evenings, D,F-all times"
  },
  {
    "OBJECTID": "349",
    "NAME": "47th-50th Sts - Rockefeller Ctr",
    "the_geom": "POINT (-73.98133100227702 40.75864100159815)",
    "LINE": "B-D-F-M",
    "NOTES": "B,M-weekdays and evenings, D,F-all times"
  },
  {
    "OBJECTID": "366",
    "NAME": "Herald Sq - 34th St",
    "the_geom": "POINT (-73.98777189072918 40.74978939990011)",
    "LINE": "B-D-F-M",
    "NOTES": "B,M-weekdays and evenings, D,F-all times"
  },
  {
    "OBJECTID": "433",
    "NAME": "Broadway - Lafayette St",
    "the_geom": "POINT (-73.99620399876055 40.725296998738045)",
    "LINE": "B-D-F-M",
    "NOTES": "B,M-weekdays and evenings, D,F-all times"
  },
  {
    "OBJECTID": "15",
    "NAME": "DeKalb Ave",
    "the_geom": "POINT (-73.98177094440949 40.690648119969794)",
    "LINE": "B-D-N-Q-R",
    "NOTES": "B-weekdays and evenings, D-all other times, N-nights, R-all other times, Q-all times"
  },
  {
    "OBJECTID": "112",
    "NAME": "Church Ave",
    "the_geom": "POINT (-73.96288246192114 40.65049324646484)",
    "LINE": "B-Q",
    "NOTES": "B-weekdays and evenings, Q-all times"
  },
  {
    "OBJECTID": "113",
    "NAME": "Newkirk Ave",
    "the_geom": "POINT (-73.96269486837261 40.63514193733789)",
    "LINE": "B-Q",
    "NOTES": "B-weekdays and evenings, Q-all times"
  },
  {
    "OBJECTID": "120",
    "NAME": "7th Ave",
    "the_geom": "POINT (-73.97285279191024 40.67710217983294)",
    "LINE": "B-Q",
    "NOTES": "B-weekdays and evenings, Q-all times"
  },
  {
    "OBJECTID": "121",
    "NAME": "Atlantic Av - Barclay's Center",
    "the_geom": "POINT (-73.97678343963167 40.684488323453685)",
    "LINE": "B-Q",
    "NOTES": "B-weekdays and evenings, Q-all times"
  },
  {
    "OBJECTID": "327",
    "NAME": "Brighton Beach",
    "the_geom": "POINT (-73.96135378598797 40.577710196642435)",
    "LINE": "B-Q",
    "NOTES": "B-weekdays and evenings, Q-all times"
  },
  {
    "OBJECTID": "328",
    "NAME": "Sheepshead Bay",
    "the_geom": "POINT (-73.95405791257907 40.58654754707536)",
    "LINE": "B-Q",
    "NOTES": "B-weekdays and evenings, Q-all times"
  },
  {
    "OBJECTID": "330",
    "NAME": "Kings Hwy",
    "the_geom": "POINT (-73.95760873538083 40.608638645396006)",
    "LINE": "B-Q",
    "NOTES": "B-weekdays and evenings, Q-all times"
  },
  {
    "OBJECTID": "61",
    "NAME": "Prospect Park",
    "the_geom": "POINT (-73.96203130426609 40.6616334551018)",
    "LINE": "B-Q-S",
    "NOTES": "B-weekdays and evenings, Q,S to Franklin Av-Fulton St-all times"
  },
  {
    "OBJECTID": "62",
    "NAME": "55th St",
    "the_geom": "POINT (-73.99534882595742 40.63147876093745)",
    "LINE": "D",
    "NOTES": "D-all times"
  },
  {
    "OBJECTID": "275",
    "NAME": "Norwood - 205th St",
    "the_geom": "POINT (-73.87885499918691 40.87481100011182)",
    "LINE": "D",
    "NOTES": "D-all times"
  },
  {
    "OBJECTID": "311",
    "NAME": "50th St",
    "the_geom": "POINT (-73.9946587805514 40.636260890961395)",
    "LINE": "D",
    "NOTES": "D-all times"
  },
  {
    "OBJECTID": "313",
    "NAME": "25th Ave",
    "the_geom": "POINT (-73.98682900011477 40.59770366695856)",
    "LINE": "D",
    "NOTES": "D-all times"
  },
  {
    "OBJECTID": "314",
    "NAME": "Bay Pky",
    "the_geom": "POINT (-73.9936762000529 40.601950461572315)",
    "LINE": "D",
    "NOTES": "D-all times"
  },
  {
    "OBJECTID": "319",
    "NAME": "79th St",
    "the_geom": "POINT (-74.00058287431507 40.61315892569516)",
    "LINE": "D",
    "NOTES": "D-all times"
  },
  {
    "OBJECTID": "320",
    "NAME": "71st St",
    "the_geom": "POINT (-73.99884094850685 40.61925870977273)",
    "LINE": "D",
    "NOTES": "D-all times"
  },
  {
    "OBJECTID": "321",
    "NAME": "20th Ave",
    "the_geom": "POINT (-73.99817432157568 40.60467699816932)",
    "LINE": "D",
    "NOTES": "D-all times"
  },
  {
    "OBJECTID": "322",
    "NAME": "18th Ave",
    "the_geom": "POINT (-74.00159259239406 40.60773573171741)",
    "LINE": "D",
    "NOTES": "D-all times"
  },
  {
    "OBJECTID": "323",
    "NAME": "62nd St",
    "the_geom": "POINT (-73.99685724994863 40.626224462922195)",
    "LINE": "D",
    "NOTES": "D-all times"
  },
  {
    "OBJECTID": "335",
    "NAME": "Bay 50th St",
    "the_geom": "POINT (-73.98376500045946 40.58884066651933)",
    "LINE": "D",
    "NOTES": "D-all times"
  },
  {
    "OBJECTID": "390",
    "NAME": "9th Ave",
    "the_geom": "POINT (-73.99444874451204 40.64648407726636)",
    "LINE": "D",
    "NOTES": "D-all times"
  },
  {
    "OBJECTID": "392",
    "NAME": "Ft Hamilton Pkwy",
    "the_geom": "POINT (-73.9942022375285 40.640912711444656)",
    "LINE": "D",
    "NOTES": "D-all times"
  },
  {
    "OBJECTID": "469",
    "NAME": "Coney Island - Stillwell Av",
    "the_geom": "POINT (-73.9812359981396 40.57728100006751)",
    "LINE": "D-F-N-Q",
    "NOTES": "D,F,N,Q-all times"
  },
  {
    "OBJECTID": "122",
    "NAME": "Atlantic Av - Barclay's Center",
    "the_geom": "POINT (-73.97880999956767 40.683665667279435)",
    "LINE": "D-N-Q-R",
    "NOTES": "D,N-all times, R-all times exc nights"
  },
  {
    "OBJECTID": "36",
    "NAME": "Union St",
    "the_geom": "POINT (-73.98310999909673 40.67731566735096)",
    "LINE": "D-N-R",
    "NOTES": "D,N-nights, R-all other times"
  },
  {
    "OBJECTID": "381",
    "NAME": "Prospect Ave",
    "the_geom": "POINT (-73.99287200067424 40.66541366712979)",
    "LINE": "D-N-R",
    "NOTES": "D,N-nights, R-all other times"
  },
  {
    "OBJECTID": "382",
    "NAME": "4th Av - 9th St",
    "the_geom": "POINT (-73.98830199974512 40.670846666842756)",
    "LINE": "D-N-R",
    "NOTES": "D,N-nights, R-all other times"
  },
  {
    "OBJECTID": "389",
    "NAME": "36th St",
    "the_geom": "POINT (-74.00354899951809 40.65514366633887)",
    "LINE": "D-N-R",
    "NOTES": "D,N,R-all times"
  },
  {
    "OBJECTID": "393",
    "NAME": "25th St",
    "the_geom": "POINT (-73.99809099974297 40.66039666692321)",
    "LINE": "D-N-R",
    "NOTES": "D,N-nights, R-all other times"
  },
  {
    "OBJECTID": "63",
    "NAME": "Jamaica - Van Wyck",
    "the_geom": "POINT (-73.81701287135405 40.70289855287313)",
    "LINE": "E",
    "NOTES": "E-all times"
  },
  {
    "OBJECTID": "409",
    "NAME": "World Trade Center",
    "the_geom": "POINT (-74.00974461517701 40.71256392680817)",
    "LINE": "E",
    "NOTES": "E-all times"
  },
  {
    "OBJECTID": "64",
    "NAME": "Kew Gardens - Union Tpke",
    "the_geom": "POINT (-73.8303702709878 40.714034819571026)",
    "LINE": "E-F",
    "NOTES": "E,F-all times"
  },
  {
    "OBJECTID": "164",
    "NAME": "75th Ave",
    "the_geom": "POINT (-73.83692369387158 40.71804465348743)",
    "LINE": "E-F",
    "NOTES": "E-evenings, weekends, nights, F-all times"
  },
  {
    "OBJECTID": "244",
    "NAME": "Briarwood - Van Wyck Blvd",
    "the_geom": "POINT (-73.82069263637443 40.70916181536946)",
    "LINE": "E-F",
    "NOTES": "E-evenings, weekends, nights, F-all times"
  },
  {
    "OBJECTID": "245",
    "NAME": "Forest Hills - 71st Av",
    "the_geom": "POINT (-73.84451672012669 40.72159430953587)",
    "LINE": "E-F-M-R",
    "NOTES": "E,F-all times, M-weekdays and evenings, R-all times exc nights"
  },
  {
    "OBJECTID": "438",
    "NAME": "Jackson Hts - Roosevelt Av",
    "the_geom": "POINT (-73.89129866519697 40.74653969115889)",
    "LINE": "E-F-M-R",
    "NOTES": "E,F-all times, M-weekdays and evenings, R-all times exc nights"
  },
  {
    "OBJECTID": "65",
    "NAME": "Sutphin Blvd - Archer Av",
    "the_geom": "POINT (-73.80800471963833 40.700382424235)",
    "LINE": "E-J-Z",
    "NOTES": "E,J-all times, Z-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "247",
    "NAME": "Jamaica Ctr - Parsons / Archer",
    "the_geom": "POINT (-73.80109632298924 40.70206737621188)",
    "LINE": "E-J-Z",
    "NOTES": "E,J-all times, Z-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "66",
    "NAME": "Court Sq - 23rd St",
    "the_geom": "POINT (-73.94605470266329 40.747768121414325)",
    "LINE": "E-M",
    "NOTES": "E-all times, M-weekdays and evenings"
  },
  {
    "OBJECTID": "142",
    "NAME": "5th Ave - 53rd St",
    "the_geom": "POINT (-73.9752485052734 40.76008683231326)",
    "LINE": "E-M",
    "NOTES": "E-all times, M-weekdays and evenings"
  },
  {
    "OBJECTID": "143",
    "NAME": "Lexington Ave - 53rd St",
    "the_geom": "POINT (-73.96907237490204 40.75746830782865)",
    "LINE": "E-M",
    "NOTES": "E-all times, M-weekdays and evenings"
  },
  {
    "OBJECTID": "9",
    "NAME": "65th St",
    "the_geom": "POINT (-73.8987883783301 40.74971952935675)",
    "LINE": "E-M-R",
    "NOTES": "E-nights, R-all other times, M-weekdays and evenings"
  },
  {
    "OBJECTID": "10",
    "NAME": "36th St",
    "the_geom": "POINT (-73.92901818461539 40.75196004401078)",
    "LINE": "E-M-R",
    "NOTES": "E-nights, R-all other times, M-weekdays and evenings"
  },
  {
    "OBJECTID": "37",
    "NAME": "Elmhurst Ave",
    "the_geom": "POINT (-73.8820347465864 40.74237007972169)",
    "LINE": "E-M-R",
    "NOTES": "E-nights, R-all other times, M-weekdays and evenings"
  },
  {
    "OBJECTID": "67",
    "NAME": "67th Ave",
    "the_geom": "POINT (-73.85286048434907 40.726505475813006)",
    "LINE": "E-M-R",
    "NOTES": "E-nights, R-all other times, M-weekdays and evenings"
  },
  {
    "OBJECTID": "68",
    "NAME": "Grand Ave - Newtown",
    "the_geom": "POINT (-73.87722085669182 40.736813418197144)",
    "LINE": "E-M-R",
    "NOTES": "E-nights, R-all other times, M-weekdays and evenings"
  },
  {
    "OBJECTID": "191",
    "NAME": "63rd Dr - Rego Park",
    "the_geom": "POINT (-73.86161820097203 40.729763972422425)",
    "LINE": "E-M-R",
    "NOTES": "E-nights, R-all other times, M-weekdays and evenings"
  },
  {
    "OBJECTID": "232",
    "NAME": "Woodhaven Blvd - Queens Mall",
    "the_geom": "POINT (-73.86943208612348 40.73309737380972)",
    "LINE": "E-M-R",
    "NOTES": "E-nights, R-all other times, M-weekdays and evenings"
  },
  {
    "OBJECTID": "237",
    "NAME": "46th St",
    "the_geom": "POINT (-73.91352174995538 40.756316952608096)",
    "LINE": "E-M-R",
    "NOTES": "E-nights, R-all other times, M-weekdays and evenings"
  },
  {
    "OBJECTID": "238",
    "NAME": "Northern Blvd",
    "the_geom": "POINT (-73.90606508052358 40.752824829236076)",
    "LINE": "E-M-R",
    "NOTES": "E-nights, R-all other times, M-weekdays and evenings"
  },
  {
    "OBJECTID": "299",
    "NAME": "Steinway St",
    "the_geom": "POINT (-73.9205264716827 40.75698735912575)",
    "LINE": "E-M-R",
    "NOTES": "E-nights, R-all other times, M-weekdays and evenings"
  },
  {
    "OBJECTID": "307",
    "NAME": "Queens Plz",
    "the_geom": "POINT (-73.93713823965695 40.74891771986323)",
    "LINE": "E-M-R",
    "NOTES": "E-all times, M-weekdays and evenings, R-all times exc nights"
  },
  {
    "OBJECTID": "69",
    "NAME": "Ditmas Ave",
    "the_geom": "POINT (-73.97817199965161 40.63611866666291)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "187",
    "NAME": "Parsons Blvd",
    "the_geom": "POINT (-73.80328900021885 40.707571999615695)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "188",
    "NAME": "169th St",
    "the_geom": "POINT (-73.79347419927721 40.710517502784)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "246",
    "NAME": "Sutphin Blvd",
    "the_geom": "POINT (-73.81083299897232 40.70541799906764)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "279",
    "NAME": "Jamaica - 179th St",
    "the_geom": "POINT (-73.78381700176453 40.712645666744045)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "308",
    "NAME": "18th Ave",
    "the_geom": "POINT (-73.97697099965796 40.62975466638584)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "325",
    "NAME": "Ave U",
    "the_geom": "POINT (-73.97337641974885 40.59592482551748)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "326",
    "NAME": "Kings Hwy",
    "the_geom": "POINT (-73.9723553085244 40.603258405128265)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "333",
    "NAME": "Neptune Ave",
    "the_geom": "POINT (-73.97459272818807 40.580738758491464)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "334",
    "NAME": "Ave X",
    "the_geom": "POINT (-73.97426599968905 40.589449666625285)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "337",
    "NAME": "Ave P",
    "the_geom": "POINT (-73.97300281528751 40.608842808949916)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "338",
    "NAME": "Ave N",
    "the_geom": "POINT (-73.97404850873143 40.61435671190883)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "339",
    "NAME": "Bay Pky",
    "the_geom": "POINT (-73.9752569782215 40.62073162316788)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "342",
    "NAME": "Ave I",
    "the_geom": "POINT (-73.97606933170925 40.62501744019143)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "346",
    "NAME": "21st St - Queensbridge",
    "the_geom": "POINT (-73.94193761457447 40.75373927087553)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "350",
    "NAME": "57th St",
    "the_geom": "POINT (-73.97736800085171 40.76408500081713)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "352",
    "NAME": "Roosevelt Island - Main St",
    "the_geom": "POINT (-73.95323499978866 40.75917199967108)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "369",
    "NAME": "East Broadway",
    "the_geom": "POINT (-73.99017700122197 40.713855001020406)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "370",
    "NAME": "Delancey St - Essex St",
    "the_geom": "POINT (-73.98807806807719 40.71868074219453)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "371",
    "NAME": "Lower East Side - 2nd Ave",
    "the_geom": "POINT (-73.98993800003434 40.72340166574911)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "452",
    "NAME": "York St",
    "the_geom": "POINT (-73.98688499993673 40.699742667691574)",
    "LINE": "F",
    "NOTES": "F-all times"
  },
  {
    "OBJECTID": "107",
    "NAME": "15th St - Prospect Park",
    "the_geom": "POINT (-73.97973580592873 40.66003568810021)",
    "LINE": "F-G",
    "NOTES": "F,G-all times"
  },
  {
    "OBJECTID": "108",
    "NAME": "7th Ave",
    "the_geom": "POINT (-73.98025117900944 40.66624469001985)",
    "LINE": "F-G",
    "NOTES": "F,G-all times"
  },
  {
    "OBJECTID": "109",
    "NAME": "Ft Hamilton Pkwy",
    "the_geom": "POINT (-73.97577599917474 40.65078166803418)",
    "LINE": "F-G",
    "NOTES": "F,G-all times"
  },
  {
    "OBJECTID": "110",
    "NAME": "Church Ave",
    "the_geom": "POINT (-73.97972116229084 40.64427200012998)",
    "LINE": "F-G",
    "NOTES": "F,G-all times"
  },
  {
    "OBJECTID": "374",
    "NAME": "4th Av - 9th St",
    "the_geom": "POINT (-73.98977899938897 40.67027166728493)",
    "LINE": "F-G",
    "NOTES": "F,G-all times"
  },
  {
    "OBJECTID": "375",
    "NAME": "Smith - 9th Sts",
    "the_geom": "POINT (-73.99589172790934 40.67364106090412)",
    "LINE": "F-G",
    "NOTES": "F,G-all times"
  },
  {
    "OBJECTID": "376",
    "NAME": "Bergen St",
    "the_geom": "POINT (-73.99075649573565 40.68611054725977)",
    "LINE": "F-G",
    "NOTES": "F,G-all times"
  },
  {
    "OBJECTID": "394",
    "NAME": "Carroll St",
    "the_geom": "POINT (-73.99494697998841 40.68027335170176)",
    "LINE": "F-G",
    "NOTES": "F,G-all times"
  },
  {
    "OBJECTID": "365",
    "NAME": "23rd St",
    "the_geom": "POINT (-73.99276500471389 40.742954317826005)",
    "LINE": "F-M",
    "NOTES": "F-all times, M-weekdays and evenings"
  },
  {
    "OBJECTID": "441",
    "NAME": "14th St",
    "the_geom": "POINT (-73.99620899921355 40.73822799969515)",
    "LINE": "F-M",
    "NOTES": "F-all times, M-weekdays and evenings"
  },
  {
    "OBJECTID": "198",
    "NAME": "W 8th St - NY Aquarium",
    "the_geom": "POINT (-73.97595787413822 40.576033818103646)",
    "LINE": "F-Q",
    "NOTES": "F,Q-all times"
  },
  {
    "OBJECTID": "351",
    "NAME": "Lexington Ave - 63rd St",
    "the_geom": "POINT (-73.96608964413245 40.76461809442373)",
    "LINE": "F-Q",
    "NOTES": "F-all times, Q all times"
  },
  {
    "OBJECTID": "70",
    "NAME": "Classon Ave",
    "the_geom": "POINT (-73.95999000137212 40.68888900026455)",
    "LINE": "G",
    "NOTES": "G-all times"
  },
  {
    "OBJECTID": "71",
    "NAME": "Broadway",
    "the_geom": "POINT (-73.95031225606621 40.706126576274166)",
    "LINE": "G",
    "NOTES": "G-all times"
  },
  {
    "OBJECTID": "106",
    "NAME": "Bedford - Nostrand Aves",
    "the_geom": "POINT (-73.95352200064022 40.68962700158444)",
    "LINE": "G",
    "NOTES": "G-all times"
  },
  {
    "OBJECTID": "118",
    "NAME": "Fulton St",
    "the_geom": "POINT (-73.97537499833149 40.68711899950771)",
    "LINE": "G",
    "NOTES": "G-all times"
  },
  {
    "OBJECTID": "119",
    "NAME": "Clinton - Washington Aves",
    "the_geom": "POINT (-73.9667959986695 40.68809400106055)",
    "LINE": "G",
    "NOTES": "G-all times"
  },
  {
    "OBJECTID": "137",
    "NAME": "Nassau Ave",
    "the_geom": "POINT (-73.95118300016523 40.724479997808274)",
    "LINE": "G",
    "NOTES": "G-all times"
  },
  {
    "OBJECTID": "138",
    "NAME": "Greenpoint Ave",
    "the_geom": "POINT (-73.95442500146235 40.73126699971465)",
    "LINE": "G",
    "NOTES": "G-all times"
  },
  {
    "OBJECTID": "148",
    "NAME": "Metropolitan Ave",
    "the_geom": "POINT (-73.9514239994525 40.71277400073426)",
    "LINE": "G",
    "NOTES": "G-all times"
  },
  {
    "OBJECTID": "153",
    "NAME": "Long Island City - Court Sq",
    "the_geom": "POINT (-73.94381559597835 40.74630503357145)",
    "LINE": "G",
    "NOTES": "G-all times"
  },
  {
    "OBJECTID": "154",
    "NAME": "21st St",
    "the_geom": "POINT (-73.9495999997552 40.7441286664954)",
    "LINE": "G",
    "NOTES": "G-all times"
  },
  {
    "OBJECTID": "363",
    "NAME": "Myrtle-Willoughby Aves",
    "the_geom": "POINT (-73.94906699890156 40.69461899903765)",
    "LINE": "G",
    "NOTES": "G-all times"
  },
  {
    "OBJECTID": "364",
    "NAME": "Flushing Ave",
    "the_geom": "POINT (-73.9502340010257 40.70037666622154)",
    "LINE": "G",
    "NOTES": "G-all times"
  },
  {
    "OBJECTID": "75",
    "NAME": "Halsey St",
    "the_geom": "POINT (-73.9166388842194 40.686415270704344)",
    "LINE": "J",
    "NOTES": "J-all times"
  },
  {
    "OBJECTID": "207",
    "NAME": "85th St - Forest Pky",
    "the_geom": "POINT (-73.86008700006875 40.69242699966103)",
    "LINE": "J",
    "NOTES": "J-all times"
  },
  {
    "OBJECTID": "209",
    "NAME": "111th St",
    "the_geom": "POINT (-73.83679338454697 40.697114810696476)",
    "LINE": "J",
    "NOTES": "J-all times"
  },
  {
    "OBJECTID": "215",
    "NAME": "Cleveland St",
    "the_geom": "POINT (-73.8851940021643 40.679777998961164)",
    "LINE": "J",
    "NOTES": "J-all times"
  },
  {
    "OBJECTID": "225",
    "NAME": "Alabama Ave",
    "the_geom": "POINT (-73.89852600159652 40.676998000003756)",
    "LINE": "J",
    "NOTES": "J-all times"
  },
  {
    "OBJECTID": "228",
    "NAME": "Cypress Hills",
    "the_geom": "POINT (-73.87332199882995 40.689616000838754)",
    "LINE": "J",
    "NOTES": "J-all times"
  },
  {
    "OBJECTID": "300",
    "NAME": "Kosciuszko St",
    "the_geom": "POINT (-73.92850899927413 40.69317200129202)",
    "LINE": "J",
    "NOTES": "J-all times"
  },
  {
    "OBJECTID": "76",
    "NAME": "Lorimer St",
    "the_geom": "POINT (-73.94735499884204 40.703844000042096)",
    "LINE": "J-M",
    "NOTES": "J-all times, skips weekdays AM westbound, PM eastbound, M-all times exc nights"
  },
  {
    "OBJECTID": "140",
    "NAME": "Hewes St",
    "the_geom": "POINT (-73.95348800038457 40.706889998054)",
    "LINE": "J-M",
    "NOTES": "J-all times, skips weekdays AM westbound, PM eastbound, M-all times exc nights"
  },
  {
    "OBJECTID": "372",
    "NAME": "Flushing Ave",
    "the_geom": "POINT (-73.94137734838365 40.70040440298112)",
    "LINE": "J-M",
    "NOTES": "J-all times, skips weekdays AM westbound, PM eastbound, M-all times exc nights"
  },
  {
    "OBJECTID": "11",
    "NAME": "Delancey St - Essex St",
    "the_geom": "POINT (-73.98740940202974 40.71830605618619)",
    "LINE": "J-M-Z",
    "NOTES": "J-all times, M-all times exc nights, Z-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "139",
    "NAME": "Marcy Ave",
    "the_geom": "POINT (-73.95783200075729 40.708383000017925)",
    "LINE": "J-M-Z",
    "NOTES": "J-all times, M-all times exc nights, Z-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "373",
    "NAME": "Myrtle Ave",
    "the_geom": "POINT (-73.9356230012996 40.6971950005145)",
    "LINE": "J-M-Z",
    "NOTES": "J,M-all times, Z-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "12",
    "NAME": "Van Siclen Ave",
    "the_geom": "POINT (-73.89165772702445 40.67802821447783)",
    "LINE": "J-Z",
    "NOTES": "Z-rush hours AM westbound, PM eastbound, J-all other times"
  },
  {
    "OBJECTID": "13",
    "NAME": "Norwood Ave",
    "the_geom": "POINT (-73.87962599910783 40.68152000045683)",
    "LINE": "J-Z",
    "NOTES": "Z-rush hours AM westbound, PM eastbound, J-all other times"
  },
  {
    "OBJECTID": "14",
    "NAME": "104th-102nd Sts",
    "the_geom": "POINT (-73.84443500029684 40.69516599823373)",
    "LINE": "J-Z",
    "NOTES": "Z-rush hours AM westbound, PM eastbound, J-all other times"
  },
  {
    "OBJECTID": "35",
    "NAME": "Chauncey St",
    "the_geom": "POINT (-73.91038357033376 40.68285130087804)",
    "LINE": "J-Z",
    "NOTES": "Z-rush hours AM westbound, PM eastbound, J-all other times"
  },
  {
    "OBJECTID": "208",
    "NAME": "Woodhaven Blvd",
    "the_geom": "POINT (-73.85205199740794 40.69370399880105)",
    "LINE": "J-Z",
    "NOTES": "J-all times, Z-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "210",
    "NAME": "121st St",
    "the_geom": "POINT (-73.82834900017954 40.700481998515315)",
    "LINE": "J-Z",
    "NOTES": "Z-rush hours AM westbound, PM eastbound, J-all other times"
  },
  {
    "OBJECTID": "224",
    "NAME": "Broadway Junction",
    "the_geom": "POINT (-73.90428999746412 40.67936600147369)",
    "LINE": "J-Z",
    "NOTES": "J-all times, Z-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "227",
    "NAME": "Crescent St",
    "the_geom": "POINT (-73.87392925215778 40.68315265707736)",
    "LINE": "J-Z",
    "NOTES": "J-all times, Z-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "229",
    "NAME": "75th St - Eldert Ln",
    "the_geom": "POINT (-73.86728799944963 40.691290001246735)",
    "LINE": "J-Z",
    "NOTES": "Z-rush hours AM westbound, PM eastbound, J-all other times"
  },
  {
    "OBJECTID": "301",
    "NAME": "Gates Ave",
    "the_geom": "POINT (-73.92215600150752 40.689583999013905)",
    "LINE": "J-Z",
    "NOTES": "Z-rush hours AM westbound, PM eastbound, J-all other times"
  },
  {
    "OBJECTID": "413",
    "NAME": "Fulton St",
    "the_geom": "POINT (-74.00793800110387 40.71002266658424)",
    "LINE": "J-Z",
    "NOTES": "J-all times, Z-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "414",
    "NAME": "Chambers St",
    "the_geom": "POINT (-74.00340673031336 40.71323378962671)",
    "LINE": "J-Z",
    "NOTES": "J-all times, Z-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "415",
    "NAME": "Canal St",
    "the_geom": "POINT (-73.99982638545937 40.71817387697391)",
    "LINE": "J-Z",
    "NOTES": "J-all times, Z-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "428",
    "NAME": "Broad St",
    "the_geom": "POINT (-74.01105599991755 40.706476001106005)",
    "LINE": "J-Z",
    "NOTES": "J-all times, Z-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "434",
    "NAME": "Bowery",
    "the_geom": "POINT (-73.99380690654237 40.720246883147254)",
    "LINE": "J-Z",
    "NOTES": "J-all times, Z-rush hours AM westbound, PM eastbound"
  },
  {
    "OBJECTID": "72",
    "NAME": "Lorimer St",
    "the_geom": "POINT (-73.95024799996972 40.71407200064717)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "73",
    "NAME": "Sutter Ave",
    "the_geom": "POINT (-73.9019160004208 40.66914500061398)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "74",
    "NAME": "Wilson Ave",
    "the_geom": "POINT (-73.90395860491864 40.68886654246024)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "146",
    "NAME": "1st Ave",
    "the_geom": "POINT (-73.98168087489128 40.73097497580066)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "149",
    "NAME": "Grand St",
    "the_geom": "POINT (-73.94049699874644 40.71157600064823)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "150",
    "NAME": "Graham Ave",
    "the_geom": "POINT (-73.94394399869037 40.714575998363635)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "151",
    "NAME": "Bedford Ave",
    "the_geom": "POINT (-73.95666499806525 40.71717399858899)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "152",
    "NAME": "Montrose Ave",
    "the_geom": "POINT (-73.93979284713505 40.70739106438455)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "194",
    "NAME": "Atlantic Ave",
    "the_geom": "POINT (-73.9030969995401 40.67534466640805)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "211",
    "NAME": "Halsey St",
    "the_geom": "POINT (-73.90393400118631 40.69551800114878)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "212",
    "NAME": "Myrtle - Wyckoff Aves",
    "the_geom": "POINT (-73.9109757182647 40.699471062427136)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "216",
    "NAME": "Livonia Ave",
    "the_geom": "POINT (-73.90056237226057 40.66405727094644)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "219",
    "NAME": "Canarsie - Rockaway Pkwy",
    "the_geom": "POINT (-73.90185000017287 40.64665366739528)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "220",
    "NAME": "E 105th St",
    "the_geom": "POINT (-73.89954769388724 40.65046878544699)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "223",
    "NAME": "New Lots Ave",
    "the_geom": "POINT (-73.89927796057142 40.65891477368527)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "235",
    "NAME": "DeKalb Ave",
    "the_geom": "POINT (-73.91823200219723 40.70369299961644)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "282",
    "NAME": "Bushwick - Aberdeen",
    "the_geom": "POINT (-73.90526176305106 40.68286062551184)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "283",
    "NAME": "Broadway Junction",
    "the_geom": "POINT (-73.90311757920684 40.67845624842869)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "305",
    "NAME": "Jefferson St",
    "the_geom": "POINT (-73.9229130000312 40.706606665988716)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "306",
    "NAME": "Morgan Ave",
    "the_geom": "POINT (-73.93314700024209 40.70615166680729)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "383",
    "NAME": "3rd Ave",
    "the_geom": "POINT (-73.98575000112093 40.73269099971662)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "384",
    "NAME": "Union Sq - 14th St",
    "the_geom": "POINT (-73.99066976901818 40.73476331217923)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "442",
    "NAME": "6th Ave",
    "the_geom": "POINT (-73.99775078874781 40.73774146981052)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "443",
    "NAME": "8th Ave",
    "the_geom": "POINT (-74.00257800104762 40.73977666638199)",
    "LINE": "L",
    "NOTES": "L-all times"
  },
  {
    "OBJECTID": "233",
    "NAME": "Myrtle - Wyckoff Aves",
    "the_geom": "POINT (-73.91217899939602 40.69945400090837)",
    "LINE": "M",
    "NOTES": "M-all times"
  },
  {
    "OBJECTID": "234",
    "NAME": "Seneca Ave",
    "the_geom": "POINT (-73.90758199885423 40.70291899894902)",
    "LINE": "M",
    "NOTES": "M-all times"
  },
  {
    "OBJECTID": "302",
    "NAME": "Central Ave",
    "the_geom": "POINT (-73.92724299902838 40.69787300011831)",
    "LINE": "M",
    "NOTES": "M-all times"
  },
  {
    "OBJECTID": "303",
    "NAME": "Knickerbocker Ave",
    "the_geom": "POINT (-73.91972000188625 40.69866000123805)",
    "LINE": "M",
    "NOTES": "M-all times"
  },
  {
    "OBJECTID": "423",
    "NAME": "Fresh Pond Rd",
    "the_geom": "POINT (-73.8958980017196 40.70622599823048)",
    "LINE": "M",
    "NOTES": "M-all times"
  },
  {
    "OBJECTID": "424",
    "NAME": "Middle Village - Metropolitan Ave",
    "the_geom": "POINT (-73.88957722978091 40.711431305058255)",
    "LINE": "M",
    "NOTES": "M-all times"
  },
  {
    "OBJECTID": "449",
    "NAME": "Forest Ave",
    "the_geom": "POINT (-73.90307500005954 40.70441200087814)",
    "LINE": "M",
    "NOTES": "M-all times"
  },
  {
    "OBJECTID": "77",
    "NAME": "8th Ave",
    "the_geom": "POINT (-74.01151599772157 40.634970999647166)",
    "LINE": "N",
    "NOTES": "N-all times"
  },
  {
    "OBJECTID": "312",
    "NAME": "Ft Hamilton Pkwy",
    "the_geom": "POINT (-74.00535100046275 40.63138566722445)",
    "LINE": "N",
    "NOTES": "N-all times"
  },
  {
    "OBJECTID": "315",
    "NAME": "20th Ave",
    "the_geom": "POINT (-73.98452199846113 40.617108999866005)",
    "LINE": "N",
    "NOTES": "N-all times"
  },
  {
    "OBJECTID": "316",
    "NAME": "18th Ave",
    "the_geom": "POINT (-73.99045399865993 40.620686997680025)",
    "LINE": "N",
    "NOTES": "N-all times"
  },
  {
    "OBJECTID": "324",
    "NAME": "New Utrecht Ave",
    "the_geom": "POINT (-73.99635300025969 40.62484166725887)",
    "LINE": "N",
    "NOTES": "N-all times"
  },
  {
    "OBJECTID": "331",
    "NAME": "Ave U",
    "the_geom": "POINT (-73.97908400099428 40.597235999920436)",
    "LINE": "N",
    "NOTES": "N-all times"
  },
  {
    "OBJECTID": "332",
    "NAME": "Kings Hwy",
    "the_geom": "POINT (-73.98037300229343 40.60405899980493)",
    "LINE": "N",
    "NOTES": "N-all times"
  },
  {
    "OBJECTID": "336",
    "NAME": "Gravesend - 86th St",
    "the_geom": "POINT (-73.97818899936274 40.59246500088859)",
    "LINE": "N",
    "NOTES": "N-all times"
  },
  {
    "OBJECTID": "341",
    "NAME": "Bay Pky",
    "the_geom": "POINT (-73.98178001069293 40.61145578989005)",
    "LINE": "N",
    "NOTES": "N-all times"
  },
  {
    "OBJECTID": "435",
    "NAME": "Canal St",
    "the_geom": "POINT (-74.00105471306033 40.718814263587134)",
    "LINE": "N-Q",
    "NOTES": "N-all times, Q-weekdays and evenings"
  },
  {
    "OBJECTID": "80",
    "NAME": "Times Sq - 42nd St",
    "the_geom": "POINT (-73.98676800153976 40.75461199851542)",
    "LINE": "N-Q-R-W",
    "NOTES": "N,Q-all times, R-all times exc nights, W part time"
  },
  {
    "OBJECTID": "144",
    "NAME": "28th St",
    "the_geom": "POINT (-73.98869800128737 40.74545399979951)",
    "LINE": "N-Q-R-W",
    "NOTES": "N-all times, R-all times exc nights, part time"
  },
  {
    "OBJECTID": "145",
    "NAME": "Herald Sq - 34th St",
    "the_geom": "POINT (-73.9879368338264 40.74964456009442)",
    "LINE": "N-Q-R-W",
    "NOTES": "N,Q-all times, R-all times exc nights"
  },
  {
    "OBJECTID": "354",
    "NAME": "49th St",
    "the_geom": "POINT (-73.98420956591096 40.759801973870694)",
    "LINE": "N-Q-R-W",
    "NOTES": "N-all times, Q-all times exc weekends, R-all times exc nights, W part time"
  },
  {
    "OBJECTID": "355",
    "NAME": "57th St",
    "the_geom": "POINT (-73.98072973372128 40.76456552501829)",
    "LINE": "N-Q-R-W",
    "NOTES": "N,Q-all times, R-all times exc nights, W part time"
  },
  {
    "OBJECTID": "379",
    "NAME": "Union Sq - 14th St",
    "the_geom": "POINT (-73.99053886181645 40.73587226699812)",
    "LINE": "N-Q-R-W",
    "NOTES": "N,Q-all times, R-all times exc nights"
  },
  {
    "OBJECTID": "380",
    "NAME": "23rd St",
    "the_geom": "POINT (-73.98934400102907 40.74130266729)",
    "LINE": "N-Q-R-W",
    "NOTES": "N-all times, Q-nights, R-all times exc nights"
  },
  {
    "OBJECTID": "400",
    "NAME": "Prince St",
    "the_geom": "POINT (-73.99770200045987 40.72432866597571)",
    "LINE": "N-Q-R-W",
    "NOTES": "N-all times, Q-nights, R-all times exc nights"
  },
  {
    "OBJECTID": "401",
    "NAME": "8th St - NYU",
    "the_geom": "POINT (-73.99250799849149 40.73046499853991)",
    "LINE": "N-Q-R-W",
    "NOTES": "N-all times, Q-nights, R-all times exc nights"
  },
  {
    "OBJECTID": "377",
    "NAME": "Jay St - MetroTech",
    "the_geom": "POINT (-73.98605667854612 40.69225539645323)",
    "LINE": "N-R",
    "NOTES": "N-nights, R-all other times"
  },
  {
    "OBJECTID": "378",
    "NAME": "Court St",
    "the_geom": "POINT (-73.99181830901125 40.694196480776995)",
    "LINE": "N-R",
    "NOTES": "N-nights, R-all other times"
  },
  {
    "OBJECTID": "387",
    "NAME": "59th St",
    "the_geom": "POINT (-74.01788099953987 40.6413616662838)",
    "LINE": "N-R",
    "NOTES": "N,R-all times"
  },
  {
    "OBJECTID": "388",
    "NAME": "45th St",
    "the_geom": "POINT (-74.01000600074939 40.648938666612814)",
    "LINE": "N-R",
    "NOTES": "N-nights, R-all times, skips nights northbound"
  },
  {
    "OBJECTID": "391",
    "NAME": "53rd St",
    "the_geom": "POINT (-74.01403399986317 40.64506866735981)",
    "LINE": "N-R",
    "NOTES": "N-nights, R-all times, skips nights northbound"
  },
  {
    "OBJECTID": "356",
    "NAME": "5th Ave - 59th St",
    "the_geom": "POINT (-73.97334700047045 40.764810999755284)",
    "LINE": "N-R-W",
    "NOTES": "N-all times, R-all times exc nights, W part time"
  },
  {
    "OBJECTID": "357",
    "NAME": "Lexington Ave - 59th St",
    "the_geom": "POINT (-73.96737501711436 40.762708855394564)",
    "LINE": "N-R-W",
    "NOTES": "N-all times, R-all times exc nights, W part time"
  },
  {
    "OBJECTID": "78",
    "NAME": "36th Ave",
    "the_geom": "POINT (-73.929861999118 40.7564420005104)",
    "LINE": "N-W",
    "NOTES": "N-all times, W part time"
  },
  {
    "OBJECTID": "79",
    "NAME": "Broadway",
    "the_geom": "POINT (-73.92582299919906 40.761431998800546)",
    "LINE": "N-W",
    "NOTES": "N-all times, W part time"
  },
  {
    "OBJECTID": "155",
    "NAME": "39th Ave",
    "the_geom": "POINT (-73.93285137679598 40.75276306140845)",
    "LINE": "N-W",
    "NOTES": "N-all times, W part time"
  },
  {
    "OBJECTID": "251",
    "NAME": "Astoria Blvd",
    "the_geom": "POINT (-73.91809500109238 40.77003699949086)",
    "LINE": "N-W",
    "NOTES": "N-all times, W part time"
  },
  {
    "OBJECTID": "252",
    "NAME": "Astoria - Ditmars Blvd",
    "the_geom": "POINT (-73.9120340001031 40.775035666523664)",
    "LINE": "N-W",
    "NOTES": "N-all times, W part time"
  },
  {
    "OBJECTID": "304",
    "NAME": "30th Ave",
    "the_geom": "POINT (-73.9214790001739 40.76677866673298)",
    "LINE": "N-W",
    "NOTES": "N-all times, W part time"
  },
  {
    "OBJECTID": "100",
    "NAME": "Ocean Pkwy",
    "the_geom": "POINT (-73.96850099975177 40.57631166708091)",
    "LINE": "Q",
    "NOTES": "Q-all times"
  },
  {
    "OBJECTID": "111",
    "NAME": "Beverly Rd",
    "the_geom": "POINT (-73.96435779623125 40.64390459860419)",
    "LINE": "Q",
    "NOTES": "Q-all times"
  },
  {
    "OBJECTID": "114",
    "NAME": "Parkside Ave",
    "the_geom": "POINT (-73.96145343987648 40.65507304163716)",
    "LINE": "Q",
    "NOTES": "Q-all times"
  },
  {
    "OBJECTID": "329",
    "NAME": "Ave U",
    "the_geom": "POINT (-73.95581122316301 40.59930895095475)",
    "LINE": "Q",
    "NOTES": "Q-all times"
  },
  {
    "OBJECTID": "340",
    "NAME": "Ave M",
    "the_geom": "POINT (-73.9592431052215 40.617397744443736)",
    "LINE": "Q",
    "NOTES": "Q-all times"
  },
  {
    "OBJECTID": "343",
    "NAME": "Ave J",
    "the_geom": "POINT (-73.96069316246925 40.625022819915166)",
    "LINE": "Q",
    "NOTES": "Q-all times"
  },
  {
    "OBJECTID": "344",
    "NAME": "Ave H",
    "the_geom": "POINT (-73.96151793942495 40.62920837758969)",
    "LINE": "Q",
    "NOTES": "Q-all times"
  },
  {
    "OBJECTID": "345",
    "NAME": "Neck Rd",
    "the_geom": "POINT (-73.95507827493762 40.59532169111695)",
    "LINE": "Q",
    "NOTES": "Q-all times"
  },
  {
    "OBJECTID": "461",
    "NAME": "Cortelyou Rd",
    "the_geom": "POINT (-73.96379005505493 40.6409401651401)",
    "LINE": "Q",
    "NOTES": "Q-all times"
  },
  {
    "OBJECTID": "641",
    "NAME": "72nd St",
    "the_geom": "POINT (-73.95836178682246 40.76880251014895)",
    "LINE": "Q",
    "NOTES": "Q-all times"
  },
  {
    "OBJECTID": "642",
    "NAME": "86th St",
    "the_geom": "POINT (-73.95177090964917 40.77786104333163)",
    "LINE": "Q",
    "NOTES": "Q-all times"
  },
  {
    "OBJECTID": "643",
    "NAME": "96th St",
    "the_geom": "POINT (-73.9470660219183 40.784236650177654)",
    "LINE": "Q",
    "NOTES": "Q-all times"
  },
  {
    "OBJECTID": "309",
    "NAME": "77th St",
    "the_geom": "POINT (-74.0255099996266 40.629741666886915)",
    "LINE": "R",
    "NOTES": "R-all times"
  },
  {
    "OBJECTID": "310",
    "NAME": "Bay Ridge Ave",
    "the_geom": "POINT (-74.02337699950728 40.63496666682377)",
    "LINE": "R",
    "NOTES": "R-all times"
  },
  {
    "OBJECTID": "317",
    "NAME": "Bay Ridge - 95th St",
    "the_geom": "POINT (-74.03087600085765 40.61662166725951)",
    "LINE": "R",
    "NOTES": "R-all times"
  },
  {
    "OBJECTID": "318",
    "NAME": "86th St",
    "the_geom": "POINT (-74.0283979999864 40.62268666715025)",
    "LINE": "R",
    "NOTES": "R-all times"
  },
  {
    "OBJECTID": "416",
    "NAME": "City Hall",
    "the_geom": "POINT (-74.00698581780337 40.71327233111697)",
    "LINE": "R-W",
    "NOTES": "N-nights, R-all other times"
  },
  {
    "OBJECTID": "417",
    "NAME": "Canal St",
    "the_geom": "POINT (-74.0018260000577 40.71946500105898)",
    "LINE": "R-W",
    "NOTES": "N-nights, R-all other times"
  },
  {
    "OBJECTID": "421",
    "NAME": "Whitehall St",
    "the_geom": "POINT (-74.0130072374272 40.703142373599135)",
    "LINE": "R-W",
    "NOTES": "N-nights, R-all other times"
  },
  {
    "OBJECTID": "422",
    "NAME": "Rector St",
    "the_geom": "POINT (-74.01297456253795 40.707744756294474)",
    "LINE": "R-W",
    "NOTES": "N-nights, R-all other times"
  },
  {
    "OBJECTID": "429",
    "NAME": "Cortlandt St",
    "the_geom": "POINT (-74.01113196473266 40.7105129841524)",
    "LINE": "R-W",
    "NOTES": "N-nights, R-all other times"
  },
  {
    "OBJECTID": "81",
    "NAME": "Grand Central - 42nd St",
    "the_geom": "POINT (-73.97918899989101 40.75276866674217)",
    "LINE": "S",
    "NOTES": "S to Times Sq-all times exc nights, closed nights-use 7"
  },
  {
    "OBJECTID": "82",
    "NAME": "Park Pl",
    "the_geom": "POINT (-73.95762400074634 40.67477166685263)",
    "LINE": "S",
    "NOTES": "S Franklin Av-Fulton St to Prospect Park-all times"
  },
  {
    "OBJECTID": "147",
    "NAME": "Times Sq - 42nd St",
    "the_geom": "POINT (-73.98622899953202 40.755983000570076)",
    "LINE": "S",
    "NOTES": "S to Grand Central-all times exc nights, closed nights-use 7"
  },
  {
    "OBJECTID": "281",
    "NAME": "Botanic Garden",
    "the_geom": "POINT (-73.95924499945693 40.670342666584396)",
    "LINE": "S",
    "NOTES": "S Franklin Av-Fulton St to Prospect Park-all times"
  },
  {
    "OBJECTID": "288",
    "NAME": "Franklin Ave - Fulton St",
    "the_geom": "POINT (-73.95582700110425 40.68059566598263)",
    "LINE": "S",
    "NOTES": "S to Prospect Park-all times"
  }
]

new_stations = []

original_stations.each do |station|

  stations = []
  if station[:LINE].length > 1

    lines = station[:LINE].split("-")
    lines.each do |line|
      new_station = {}
      new_station[:MTA_ID] = station[:OBJECTID]
      new_station[:NAME] = station[:NAME]
      new_station[:the_geom] = station[:the_geom]
      new_station[:LINE] = line
      new_station[:NOTES] = station[:NOTES]
      new_stations << new_station
    end

  else
    new_station = {}
    new_station[:MTA_ID] = station[:OBJECTID]
    new_station[:NAME] = station[:NAME]
    new_station[:the_geom] = station[:the_geom]
    new_station[:LINE] = station[:LINE]
    new_station[:NOTES] = station[:NOTES]
    new_stations << new_station
  end
end

result = new_stations.flatten
puts result







