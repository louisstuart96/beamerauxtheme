module = "beamerauxtheme"

maindir = "."
sourcefiledir = maindir .. "/themes"
docfiledir = maindir .. "/doc"

sourcefiles = {"*.sty"}
cleanfiles = {"*.zip"}
textfiles = {"*.md", "LICENSE"}
unpackfiles = {}
typesetfiles = {"*.tex"}

packtdszip = true
flatten = false

kpse.set_program_name("kpsewhich")
if not release_date then
    dofile(kpse.lookup("l3build.lua"))
end