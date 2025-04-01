-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local DatastoreHandler = require("DatastoreHandler.luau")
local Players = game:GetService("Players")

-- Variables -- 

local LevelCompletion = ReplicatedStorage.Events.UpdateLevel --BindableEvent

-- CONSTANTS --

local Level = "LevelOne"
local DataCatalogue = {}

-- Function --

local function LoadData(Player)
    local DataTable: DatastoreHandler.DataTable = {
        Table = DatastoreHandler.CreateTable(Player),
        Player = Player
    }

    local LoadedData = DatastoreHandler:LoadAsync(DataTable)
    
    table.insert(DataCatalogue, LoadData)
end

-- Behaviour --

Players.PlayerAdded:Connect(LoadData)