local api = "https://animated-barnacle-wx7vx94x96vhv9gp-5000.app.github.dev"

-- local res = fetch({
--     url = api,
--     method = "GET",
--     headers = { ["Content-Type"] = "application/json" },
--     body = '{ "test": ' .. test .. '}'
-- })


-- ANCHOR: Login/Register
do
    get("button_login").onclick(function()
        local username = get("input_username").value()
        local password = get("input_password").value()

        local res = fetch({
            url = api .. "/user/login",
            method = "POST",
            headers = { ["Content-Type"] = "application/json" },
            body = '{ "username": "' .. username .. '", "password": "' .. password .. '" }'
        })
        
        local status = get("status")
        if res.status == 200 then
            status.set_contents("Login successful")
        else
            status.set_contents("Login successful")
        end
    end)

end