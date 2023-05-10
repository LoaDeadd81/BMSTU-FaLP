db.record.aggregate([{
    $lookup: {
        from: "auto",
        localField: "surname",
        foreignField: "surname",
        as: "auto"
    }
}, {
    $lookup: {
        from: "building",
        localField: "surname",
        foreignField: "surname",
        as: "building"
    }
}, {$lookup: {from: "site", localField: "surname", foreignField: "surname", as: "site"}}, {
    $lookup: {
        from: "wvehicle",
        localField: "surname",
        foreignField: "surname",
        as: "wvehicle"
    }
}, {$match: {$expr: {$eq: ['$surname', 'Ivanov'],}}}, {
    "$project": {
        "surname": 1,
        "auto.name": 1,
        "auto.price": 1,
        "building.name": 1,
        "building.price": 1,
        "site.name": 1,
        "site.price": 1,
        "wvehicle.name": 1,
        "wvehicle.price": 1,
    }
},])

db.record.aggregate([{
    $lookup: {
        from: "auto",
        localField: "surname",
        foreignField: "surname",
        as: "auto"
    }
}, {
    $lookup: {
        from: "building",
        localField: "surname",
        foreignField: "surname",
        as: "building"
    }
}, {$lookup: {from: "site", localField: "surname", foreignField: "surname", as: "site"}}, {
    $lookup: {
        from: "wvehicle",
        localField: "surname",
        foreignField: "surname",
        as: "wvehicle"
    }
}, {$match: {$expr: {$not: {$eq: ['$wvehicle', []]}}}}, {
    "$project": {
        "surname": 1,
        "wvehicle.name": 1,
        "wvehicle.price": 1,
    }
},])

db.record.aggregate([{
    $lookup: {
        from: "auto",
        localField: "surname",
        foreignField: "surname",
        as: "auto"
    }
}, {
    $lookup: {
        from: "building",
        localField: "surname",
        foreignField: "surname",
        as: "building"
    }
}, {$lookup: {from: "site", localField: "surname", foreignField: "surname", as: "site"}}, {
    $lookup: {
        from: "wvehicle",
        localField: "surname",
        foreignField: "surname",
        as: "wvehicle"
    }
}, {
    "$project": {
        "surname": 1,
        "Cost": {$sum: [{$arrayElemAt: ["$auto.price", 0]}, {$arrayElemAt: ["$building.price", 0]}, {$arrayElemAt: ["$site.price", 0]}, {$arrayElemAt: ["$wvehicle.price", 0]}]}
    }
}])
