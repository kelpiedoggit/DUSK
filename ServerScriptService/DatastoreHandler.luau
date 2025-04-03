export type DataTable = {
    Table: any,
    Player: Player

}

local Handler = {}

function Handler.CreateTable(Player)
    local LevelTable = {
        LevelOne = false,
    }

    return LevelTable
end  

function Handler:SaveAsync(TargetTable: DataTable)
    local DatastoreService = game:GetService("DataStoreService")

    local LevelDatastore = DatastoreService:GetDataStore("LevelsCompleted")

    
end

function Handler:LoadAsync(TargetTable: DataTable) : DataTable
    local DatastoreService = game:GetService("DataStoreService")

    local LevelDatastore = DatastoreService:GetDataStore("LevelsCompleted")

    local Key = TargetTable.Player.UserId
    local Data 

    local success, result

    local LoadedData : DataTable



    return LoadedData
end





return Handler