using TaskService as service from '../../srv/task-service';
annotate service.Carts with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Mana Cost',
                Value : manaCost,
            },
            {
                $Type : 'UI.DataField',
                Value : cmc,
                Label : 'Score',
            },
            {
                $Type : 'UI.DataField',
                Value : artist,
                Label : 'Artist',
            },
            {
                $Type : 'UI.DataField',
                Value : flavor,
                Label : 'Falvor Text',
            },
            {
                $Type : 'UI.DataField',
                Value : layout,
                Label : 'Layout',
            },
            {
                $Type : 'UI.DataField',
                Value : number,
                Label : 'Number',
            },
            {
                $Type : 'UI.DataField',
                Value : originalText,
                Label : 'Original Text',
            },
            {
                $Type : 'UI.DataField',
                Value : originalType,
                Label : 'Original Type',
            },
            {
                $Type : 'UI.DataField',
                Value : power,
                Label : 'Power',
            },
            {
                $Type : 'UI.DataField',
                Value : rarity,
                Label : 'Rarity',
            },
            {
                $Type : 'UI.DataField',
                Value : setName,
                Label : 'Set''s Name',
            },
            {
                $Type : 'UI.DataField',
                Value : text,
                Label : 'Text',
            },
            {
                $Type : 'UI.DataField',
                Value : toughness,
                Label : 'Toughness',
            },
            {
                $Type : 'UI.DataField',
                Value : type,
                Label : 'Type',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Mana Cost',
            Value : manaCost,
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#cmc',
            Label : 'Score',
        },
    ],
);

annotate service.Carts with @(
    UI.HeaderInfo : {
        ImageUrl : imageUrl,
        TypeName : '',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
    }
);
annotate service.Carts with @(
    UI.DataPoint #cmc : {
        Value : cmc,
        Visualization : #Rating,
        TargetValue : 5,
    }
);
annotate service.Carts with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : imageUrl,
    }
);
annotate service.Carts with @(
    UI.Identification : [
        {
            $Type : 'UI.DataField',
            Value : imageUrl,
            Label : 'imageUrl',
        },]
);
annotate service.Carts with {
    imageUrl @Common.Text : name
};
annotate service.Carts with {
    name @Common.Text : {
        $value : types,
        ![@UI.TextArrangement] : #TextLast,
    }
};

annotate service.Carts with {
    imageUrl @Common.FieldControl : #ReadOnly
};
