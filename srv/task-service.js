const cds = require('@sap/cds');
const { INSERT } = cds.ql;

class TaskService extends cds.ApplicationService {
    async init() {
        let cards = [];
        let response = await fetch('https://api.magicthegathering.io/v1/cards')
            .then(response => response.text())
            .then(response => JSON.parse(response).cards);
        
        response.forEach(card => {
            let card_model = {
                "name": card.name,
                "manaCost": card.manaCost,
                "cmc": card.cmc,
                "colors": card.colors,
                "colorIdentity": card.colorIdentity,
                "type": card.type,
                "types": card.types,
                "subtypes": card.subtypes,
                "rarity": card.rarity,
                "set": card.set,
                "setName": card.setName,
                "text": card.text,
                "flavor": card.flavor,
                "artist": card.artist,
                "number": card.number,
                "power": card.power,
                "toughness": card.toughness,
                "layout": card.layout,
                "multiverseid": card.multiverseid,
                "imageUrl": card.imageUrl,
                "variations": card.variations,
                "foreignNames": card.foreignNames,
                "printings": card.printings,
                "originalText": card.originalText,
                "originalType": card.originalType,
                "legalities": card.legalities,
                "id": card.id
            };

            if(card_model.imageUrl != null){
                cards.push(card_model);
            }
        });

        await INSERT.into('sap.capire.cards.Carts').entries(cards);

        return super.init();
    };

}

module.exports = { TaskService }