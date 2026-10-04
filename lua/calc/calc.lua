script_name("Calc")
script_author("Xolarus")

function main()
    while not isSampAvailable() do wait(100) end

    local GREEN = 0x00FF00
    local RED   = 0xFF0000
    local BLUE  = 0x66CCFF

    sampAddChatMessage("[Calc] Calc is Loaded!", BLUE)
    sampAddChatMessage("[Calc] Use /calc help to see instruction", BLUE)

    sampRegisterChatCommand("calc", function(mcalc)
        if mcalc == "help" or mcalc == "" then
            sampAddChatMessage("[Calc] You need to write something like this:", BLUE)
            sampAddChatMessage("[Calc] Your number (+,-,*,/) Your number", BLUE)
            sampAddChatMessage("[Calc] If you write /calc 5 + 5", BLUE)
            sampAddChatMessage("[Calc] Then you will get an answer: [Calc] Answer: 10", BLUE)
        else
            local a, op, b = mcalc:match("^(%S+)%s+(%S+)%s+(%S+)$")
            if a == nil then
                sampAddChatMessage("[Calc] Error! Wrong format. Write /calc help to see instruction", RED)
             else                
                  local x = tonumber(a)
                  local y = tonumber(b)
                  if x == nil or y == nil then
                    sampAddChatMessage("[Calc] Error! Need numbers", RED)
                  else
                    local result
                    if op == "+" then
                        result = x + y
                        sampAddChatMessage("[Calc] Result: ".. result, GREEN)
                    elseif op == "-" then
                        result = x - y
                        sampAddChatMessage("[Calc] Result: ".. result, GREEN)
                    elseif op == "*" then
                        result = x * y
                        sampAddChatMessage("[Calc] Result: ".. result, GREEN)
                    elseif op == "/" then
                        if y == 0 then
                            sampAddChatMessage("[Calc] Error! Division by zero", RED)
                        else
                            result = x / y
                            sampAddChatMessage("[Calc] Result: ".. result, GREEN)
                        end
                    else
                        sampAddChatMessage("[Calc] Error! Unknown symbol", RED)
                   end
                end
             end
         end
     end)

   wait(-1)
end
