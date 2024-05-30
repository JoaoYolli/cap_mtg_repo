namespace sap.capire.cards; 


entity Carts {
key id: String default '1';
    name: String default 'a';
    manaCost: String default '2';
    cmc: Integer;
    colors: array of String; 
    colorIdentity: array of String; 
    type: String;
    types: array of String; 
    subtypes: array of String; 
    rarity: String;
    set: String;
    setName: String;
    text: String;
    flavor: String;
    artist: String;
    number: String;
    power: String;
    toughness: String;
    layout: String;
    multiverseid: String;
    imageUrl: String;
    variations: array of String; 
    foreignNames: array of String; 
    printings: array of String; 
    originalText: String;
    originalType: String;
    legalities: array of String; 
}
