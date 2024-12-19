-- Funnykayan's Trello API key unciphering script. 
-- Version 1.0.0 LUA 

local APIKEY = "INPUTAPIKEYHERE" -- Put your API key over here!
local APITOKEN = "INPUTAPITOKENHERE" -- Put your API token over here!
local APILinkOne = "INPUTLINKHEREIFCUSTOMIZING" -- Change this to the appropiate link, you may change to your own preferences if you have your own custom Trello API Links.
local APILinkTwo = "INPUTLINKHEREIFCUSTOMIZING" -- Change this to the appropiate link, you may change to your own preferences if you have your own custom Trello API Links.
local APILinkThree = "INPUTLINKHEREIFCUSTOMIZING" -- Change this to the appropiate link, you may change to your own preferences if you have your own custom Trello API Links.
local Enabled = true -- Change the "True" or "False" with the other to enable to disable the script!
local Tutorial = false -- Default is false, change this to true to see the steps that the script is following to uncipher the API links, tokens or keys.
local ExtraResults = false -- Change this to true if you want to get some extra results!
local Simplified = false -- Change this if you want quick, small results, this may not include troubleshooting steps or other info you might need.
local UserDebugMode = false -- If you are just using this script, I don't recommend enabling this. This is purely if you are customizing this script.


-- Below is printing templates, you may change them to your own liking.

local NoBIDetected = "Missing important information, which is either an API Key or API Token, make sure both are filled in!"
local NoLinkFound = "Missing a link! Make sure to input one or if you are not using said link, put LINKNOTINUSE to fix this error!"
local NoUseLinkSucces = "Link is not in use! If this isn't correct then change it!"
local LinkSucces = "The link is not one of the templates, it still may be wrong, make sure everything is correct!"
local TutorialOne = "STEPS THE SCRIPT FOLLOWS, For the unciphering part, the script will take the Key and put it into a code, it will then give you a link in the output. It will then give you more steps to follow."
local TutorialTwo = "The link will send you to a black space, you will then see your sections, cards of your board. Additionaly you can put in a SectionID and it will then give you a link that leads you to all the cards and their ID."
local TutorialThree = "Make sure you have everything set as you want. If you are customizing this script I recommend using the UserDebugMode for extra debug options, if DebugMode is activated you can enable other settings to debug settings if you like."    
local TutorialDisabled = "Tutorial is disabled, the output will not give out the steps it follows. Check line 10 to enable."
local ScriptEnableSucces = "Script Enabling/Disabling Function Succes"
local ScriptEnableError = "Script Enabling/Disabling Function Error, Check if it says |true| or |false| on line 9."
local DebugEnabledSucces = "Debug mode activated"
local DebugInfo = "Work in Progress"
local SettingsError = "Error in settings, check README to see if you did anything wrong."
local SimplificationTemplate = "Work in Progress"
local SimplificationDebugInfo = "Work in Progress"
local ExtraDebugInfo = "Work in Progress"
local TutorialDebugInfo = "Work in Progress"
local AdvDebug = "Work in Progress"
local ExtraResTemplate = "Work in Progress"
local ODBT = "Debug String"

-- Below is the main script, changing it may break the script.

local PrepFunctionOneID = "PFOID1PS"

if APIKEY == "INPUTAPIKEYHERE" or APITOKEN == "INPUTAPITOKENHERE" then
    print(NoBIDetected) 
elseif APIKEY == nil or APITOKEN == nil or APIKEY == "" or APITOKEN == "" then
    print(NoBIDetected)
end

if Enabled == false then
    print("Script Disabled")
    return
else
    print("Script Enabled")
end

if Enabled == true or Enabled == false then
    print(ScriptEnableSucces)
else
    print(ScriptEnableError) 
end

if APILinkOne == "INPUTLINKHEREIFCUSTOMIZING" or APILinkOne == nil or APILinkTwo == "INPUTLINKHEREIFCUSTOMIZING" or APILinkTwo == nil or APILinkThree == "INPUTLINKHEREIFCUSTOMIZING" or APILinkThree == nil then
    print(NoLinkFound)
elseif APILinkOne == "LINKNOTINUSE" or APILinkTwo == "LINKNOTINUSE" or APILinkThree == "LINKNOTINUSE" then
    print(NoUseLinkSucces)
else 
    print(LinkSucces)
end

if Tutorial == true then 
    print(TutorialOne)
    wait(2)
    print(TutorialTwo)
    wait(2)
    print(TutorialThree)
elseif Tutorial == false then
    print(TutorialDisabled)
end

local DebugCheck = true

if DebugCheck == true and DebugMode == true then
    print(DebugEnabledSucces)
end

local function PrepFunction()
    if APIKEY == "INPUTAPIKEYHERE" or APITOKEN == "INPUTAPITOKENHERE" or APIKEY == "" or APITOKEN == "" then
        print(NoBIDetected) 
        return
    elseif APILinkOne == "INPUTLINKHEREIFCUSTOMIZING" or APILinkTwo == "INPUTLINKHEREIFCUSTOMIZING" or APILinkThree == "INPUTLINKHEREIFCUSTOMIZING" then
        print(NoLinkFound)
        return
    elseif APILinkOne == "" or APILinkTwo == "" or APILinkThree == "" or APILinkOne == nil or APILinkTwo == nil or APILinkThree == nil then
        print(NoLinkFound)  
        return
    end
    local PrepOneSucces = true

    if PrepOneSucces == false then
        print("DebugFunction Enabled")
        return
    end
end

local PrepOneFunctionSucces = true



PrepFunction()

local ADB = false

local function DebugModeFunctionOne()
    if PrepOneFunctionSucces == false then
        print("Critical Error with Function", PrepFunctionOneID, ", Script Will not work until fixed")
        return
    end
    if ADB == true then
        if APITOKEN == "ODBMA" then
            print("ADMIN DEBUG ACTIVATED!")
        else
            return
        end
    elseif ADB == false then
        print("User Mode Active")
    end
    if UserDebugMode == true and DebugCheck == true then 
        print(DebugInfo)
    elseif UserDebugMode == false and DebugCheck == true then
        print("Debug not active")
    elseif UserDebugMode == true and DebugCheck == false then
        return
    elseif UserDebugMode == false and DebugCheck == false then
        return
    else
        return
    end
end
local OKDBA = "NRML" -- Ignore this 
local function CheckSettingsErrorsFunction()
    if ExtraResults == true and Simplified == true then
        print(SettingsError)
        return
    end
    if Simplified == true and UserDebugMode == true then
        print(SettingsError)
        return
    end
    if Enabled == false and Simplified == true then
        return
    elseif Enabled == false and UserDebugMode == true then
        return
    elseif Enabled == false and ExtraResults == true then
        return
    elseif Enabled == false and Tutorial == true then
        return
    elseif Enabled == true and Tutorial == false or Tutorial == true then
        print("Debug1 - Ignore")
    elseif Enabled == true and ExtraResults == false or ExtraResults == true then
        print("Debug2 - Ignore")
    elseif Enabled == true and UserDebugMode == false or UserDebugMode == true then
        print("Debug3 - Ignore")
    elseif Enabled == true and Simplified == false or Simplified == true then
        print("Debug4 - Ignore")
    end
    if Enabled == true and Tutorial == true and ExtraResults == true then
        return
    elseif Enabled == true and Tutorial == true and Simplified == true then
        return
    end
end

local function SettingsConfigFunction()
    if Enabled == true and Simplified == true then
        if ExtraResults == true then
            return
        end
        if Simplified == true then
            print(SimplificationTemplate)
            if UserDebugMode == true then
                print(SimplificationDebugInfo)
                print("SDebug Active")
            end
        end
    end
    if Enabled == true and UserDebugMode == true then
        if ExtraResults == true then
            print(ExtraDebugInfo)
        end
        if Tutorial == true then
            print(TutorialDebugInfo)
        end
    elseif Enabled == false and UserDebugMode == true then
        print(AdvDebug)  
    end
    if ADB == true and UserDebugMode == true then
        print(AdvDebug)
    end
    if Enabled == true and ExtraResults == true then
        print(ExtraResTemplate)
    end 
    if OKDBA == "NRML" or OKDBA == "F2601113" then
        print("Debug4 - Ignore")
    elseif OKDBA == not "F2601113" or OKDBA == not "NRML" then
        return
    end
    if Tutorial == true and Enabled == true then
        print("Debug5 - Ignore")
    end
end

local function UncipherFunction()
    local MainTemplate = "Work in Progress"
    if APILinkOne == "INPUTLINKHEREIFCUSTOMIZING" or APILinkOne == "" or APILinkOne == nil or APILinkOne == "LINKNOTINUSE" then
        print("Missing API Link 1, this one is required!")
        wait(2)
        print(NoBIDetected)
        wait(2)
        return
    else
        print("Debug6 - Ignore")
    end
    if APILinkTwo == "INPUTLINKHEREIFCUSTOMIZING" or APILinkTwo == "" or APILinkTwo == nil then
        print("APILinkTwo Wrongly Configured!")
        wait(2)
        print(NoBIDetected)
        wait(2)
        return
    else
        print("Debug7 - Ignore")
    end
    if APILinkThree == "INPUTLINKHEREIFCUSTOMIZING" or APILinkThree == "" or APILinkThree == nil then
        return
    end
end

