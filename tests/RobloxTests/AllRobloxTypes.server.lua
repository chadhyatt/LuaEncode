local LuaEncode = require(game:GetService("ReplicatedStorage").MainModule)

local Table = {
    Axes.new(Enum.Axis.X),
    BrickColor.new("Pastel Blue"),
    CFrame.new(12, 67, 90),
    CatalogSearchParams.new(),
    Color3.fromRGB(24, 45, 79),
    ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(1, 1, 1)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
    }),
    ColorSequenceKeypoint.new(0, Color3.fromRGB(1, 1, 1)),
    DateTime.fromUnixTimestamp(123456),
    DockWidgetPluginGuiInfo.new(
        Enum.InitialDockState.Float,
        true,
        false,
        150,
        150,
        100,
        100
    ),
    Enum.UserInputType,
    Enum.UserInputType.Gyro,
    Enum,
    Faces.new(Enum.NormalId.Front),
    FloatCurveKey.new(1, 1, Enum.KeyInterpolationMode.Constant),
    Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
    Instance.new("Part"),
    NumberRange.new(1, 10),
    NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0),
        NumberSequenceKeypoint.new(1, 1),
    }),
    NumberSequenceKeypoint.new(0, 0),
    OverlapParams.new(),
    Path2DControlPoint.new(UDim2.new(0, 100, 0, 100)),
    PathWaypoint.new(Vector3.new(1, 1, 1), Enum.PathWaypointAction.Walk),
    PhysicalProperties.new(1, 1, 1, 1, 1),
    Random.new(),
    Ray.new(Vector3.new(1, 1, 1), Vector3.new(2, 2, 2)),
    RaycastParams.new(),
    Rect.new(Vector2.new(1, 1), Vector2.new(2, 2)),
    Region3.new(Vector3.new(1, 1, 1), Vector3.new(3, 3, 3)),
    Region3int16.new(Vector3int16.new(1, 1, 1), Vector3int16.new(3, 3, 3)),
    TweenInfo.new(
        1,
        Enum.EasingStyle.Linear,
        Enum.EasingDirection.InOut,
        0,
        false,
        0
    ),
    RotationCurveKey.new(1, CFrame.new(1, 1, 1), Enum.KeyInterpolationMode.Cubic),
    UDim.new(0, 100),
    UDim2.new(0, 100, 0, 100),
    Vector2.new(1, 1),
    Vector2int16.new(1, 1),
    Vector3.new(1, 1),
    Vector3int16.new(1, 1),

    SharedTable.new({
        {
            {
                hi = {
                    "hello",
                    1
                },
                bye = {
                    "goodbye",
                    2
                }
            },
            {
                3,
                4,
                5,
                {
                    6
                }
            }
        }
    }),

    workspace.ChildAdded,
    workspace.ChildAdded:Connect(function() end),
}

print(LuaEncode(Table, {
    Prettify = true,
}))

--[=[
Output:

{
    Axes.new(Enum.Axis.X),
    BrickColor.new("Pastel Blue"),
    CFrame.new(12, 67, 90, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    (function(p, t) for n, v in next, t do p[n] = v end return p end)(CatalogSearchParams.new(), {
        BundleTypes = {},
        SortType = Enum.CatalogSortType.Relevance,
        MaxPrice = 2147483647,
        CategoryFilter = Enum.CatalogCategoryFilter.None,
        MinPrice = 0,
        AssetTypes = {},
        SearchKeyword = ""
    }),
    Color3.new(0.094117648899555, 0.17647059261799, 0.3098039329052),
    ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.new(0.0039215688593686, 0.0039215688593686, 0.0039215688593686)),
        ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))
    }),
    ColorSequenceKeypoint.new(0, Color3.new(0.0039215688593686, 0.0039215688593686, 0.0039215688593686)),
    DateTime.fromUnixTimestamp(123456),
    DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Float, true, false, 150, 150, 100, 100),
    Enum.UserInputType,
    Enum.UserInputType.Gyro,
    Enum,
    Faces.new(Enum.NormalId.Front),
    FloatCurveKey.new(1, 1, Enum.KeyInterpolationMode.Constant),
    Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
    nil --[[Instance.new("Part") {Name: "Part"}]],
    NumberRange.new(1, 10),
    NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0, 0),
        NumberSequenceKeypoint.new(1, 1, 0)
    }),
    NumberSequenceKeypoint.new(0, 0, 0),
    (function(p, t) for n, v in next, t do p[n] = v end return p end)(OverlapParams.new(), {
        MaxParts = 0,
        CollisionGroup = "Default",
        FilterDescendantsInstances = {},
        RespectCanCollide = false,
        FilterType = Enum.RaycastFilterType.Exclude
    }),
    Path2DControlPoint.new(UDim2.new(0, 100, 0, 100), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0)),
    PathWaypoint.new(Vector3.new(1, 1, 1), Enum.PathWaypointAction.Walk, ""),
    PhysicalProperties.new(1, 1, 1, 1, 1),
    Random.new(),
    Ray.new(Vector3.new(1, 1, 1), Vector3.new(2, 2, 2)),
    (function(p, t) for n, v in next, t do p[n] = v end return p end)(RaycastParams.new(), {
        RespectCanCollide = false,
        IgnoreWater = false,
        CollisionGroup = "Default",
        FilterDescendantsInstances = {},
        FilterType = Enum.RaycastFilterType.Exclude
    }),
    Rect.new(Vector2.new(1, 1), Vector2.new(2, 2)),
    Region3.new(Vector3.new(1, 1, 1), Vector3.new(3, 3, 3)),
    Region3int16.new(Vector3int16.new(1, 1, 1), Vector3int16.new(3, 3, 3)),
    TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0),
    RotationCurveKey.new(1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), Enum.KeyInterpolationMode.Cubic),
    UDim.new(0, 100),
    UDim2.new(0, 100, 0, 100),
    Vector2.new(1, 1),
    Vector2int16.new(1, 1),
    Vector3.new(1, 1, 0),
    Vector3int16.new(1, 1, 0),
    SharedTable.new({
        {
            {
                hi = {
                    "hello",
                    1
                },
                bye = {
                    "goodbye",
                    2
                }
            },
            {
                3,
                4,
                5,
                {
                    6
                }
            }
        }
    }),
    --[[ number("39"): RBXScriptSignal("Signal ChildAdded") ]]
    --[[ number("40"): RBXScriptConnection("Connection") ]]
}
]=]
