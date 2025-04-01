export type DataTable = {
    Table: any,
    Player: Player

}

local Handler = {}

function Handler.CreateTable(Player)
    local LevelTable = {
        LevelOne = true,
    }

    return LevelTable
end  

function Handler:LoadAsync(TargetTable: DataTable)

end

function Handler:SaveAsync(TargetTable: DataTable)

end



return Handler