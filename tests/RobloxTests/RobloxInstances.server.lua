local LuaEncode = require(game:GetService("ReplicatedStorage").MainModule)

local function NewInstance(className, properties)
    local CreatedInstance = Instance.new(className)

    if properties then
        for Name, Value in next, properties do
            if Name ~= "Parent" then
                CreatedInstance[Name] = Value
            end
        end

        if properties.Parent then
            CreatedInstance.Parent = properties.Parent
        end
    end

    return CreatedInstance
end

local Table = {
    Baseplate = workspace:FindFirstChild("Baseplate"),
    SomePart = NewInstance("Part", {
        Parent = workspace,

        Name = "hellopart!",
        CFrame = CFrame.new(0, 4, 0),
        BrickColor = BrickColor.new("Cyan")
    }),
    SomePartWithWeirdName = NewInstance("Part", {
        Parent = workspace,

        Name = "LuaEncode is cool!",
        CFrame = CFrame.new(0, 4, 0),
        BrickColor = BrickColor.new("Cyan")
    }),
    Skybox = NewInstance("Sky", {
        Parent = game:GetService("Lighting"),
        Name = "CoolSky"
    }),
    InstanceWithNoParent = NewInstance("Part")
}

print(LuaEncode(Table, {
    Prettify = true,
    UseInstancePaths = true
}))
print(LuaEncode(Table, {
    Prettify = true,
    UseInstancePaths = true,
    UseFindFirstChild = false,
}))

--[=[
Output:

{
    SomePart = workspace:FindFirstChild("hellopart!"),
    Baseplate = workspace:FindFirstChild("Baseplate"),
    SomePartWithWeirdName = workspace:FindFirstChild("LuaEncode is cool!"),
    Skybox = game:GetService("Lighting"):FindFirstChild("CoolSky"),
    InstanceWithNoParent = nil --[[Instance.new("Part") {Name: "Part"}]]
}
{
    SomePart = workspace["hellopart!"],
    Baseplate = workspace.Baseplate,
    SomePartWithWeirdName = workspace["LuaEncode is cool!"],
    Skybox = game:GetService("Lighting").CoolSky,
    InstanceWithNoParent = nil --[[Instance.new("Part") {Name: "Part"}]]
}
]=]
