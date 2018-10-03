module = "beamerauxtheme"

maindir = "."
sourcefiledir = maindir .. "/themes"
docfiledir = maindir .. "/doc"

sourcefiles = {"**/*.sty"}
docfiles = {"**/*.tex"}
demofiles = {"**/beamerauxthemeexample-*.pdf"}
cleanfiles = {"*.zip"}
unpackfiles = {}
typesetfiles = {}

packtdszip = true
flatten = false

examplelist = {
    inner = {"simplelines"},
    outer = {"sidebarwithminiframes","splitwithminiframes","twolines"}
}

function typeset_demo_tasks()
    local errorlevel = 0
    local demoname = "beamerauxthemeexample.tex"
    for type, themelist in pairs(examplelist) do
        local typename = tostring(type)
        for _, themename in pairs(themelist) do
            local texcommand = "\"\\def\\" .. typename .. "themename{" .. themename .. "}\\input{" .. demoname .. "}\""
            local jobname = "beamerauxthemeexample-" .. typename .. "-" .. themename
            errorlevel = runtool(
                "",
                ".",
                "TEXINPUTS",
                "pdflatex -interaction=nonstopmode -jobname=" .. jobname .. " " .. texcommand
            ) + runtool(
                "",
                ".",
                "TEXINPUTS",
                "pdflatex -interaction=nonstopmode -jobname=" .. jobname .. " " .. texcommand
            )
            if errorlevel~=0 then
                return errorlevel
            end
        end
    end
    return 0
end

kpse.set_program_name("kpsewhich")
if not release_date then
    dofile(kpse.lookup("l3build.lua"))
end