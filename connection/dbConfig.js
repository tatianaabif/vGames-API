// Fichier de configuration de la base de données 

const dbConfig = {
    server : "localhost",
    database : "vGames2",
    driver : "msnodesqlv8",
    options : { trustedConnection : true }
}

module.exports = dbConfig;