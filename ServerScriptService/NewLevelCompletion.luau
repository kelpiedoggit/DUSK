-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local DatastoreHandler = require("DatastoreHandler.luau")
local Players = game:GetService("Players")

-- Variables -- 

local LevelCompletion = ReplicatedStorage.Events.UpdateLevel --BindableEvent

-- CONSTANTS --

local Level = "LevelOne"

local SelectedTable

local DataCatalogue = {}

-- Function --

local function LoadData(Player: Player)
    local DataTable: DatastoreHandler.DataTable = {
        Table = DatastoreHandler.CreateTable(Player),
        Player = Player
    }

    local LoadedData = DatastoreHandler:LoadAsync(DataTable)
    
    table.insert(DataCatalogue, DataTable.Player.UserId, DataCatalogue)

end

local function SaveData(Player: Player)
    SelectedTable = DataCatalogue[Player.UserId]

    DatastoreHandler:SaveAsync(SelectedTable)
end

-- Behaviour --

Players.PlayerAdded:Connect(LoadData)

Players.PlayerRemoving:Connect(SaveData)

game:BindToClose(function()

end)