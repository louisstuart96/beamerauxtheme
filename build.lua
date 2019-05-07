module = "beamerauxtheme"

maindir = "."
sourcefiledir = maindir .. "/themes"
docfiledir = maindir .. "/doc"

sourcefiles = {"*.sty"}
docfiles = {"*.ltx"}
cleanfiles = {"*.zip"}
textfiles = {"*.md", "LICENSE"}
unpackfiles = {}
typesetfiles = {"*.tex"}

packtdszip = false
flatten = false

tagfiles = {"*.sty", "README.md"}
function update_tag(file,content,tagname,tagdate)
  return string.gsub(content,
    "%d%d%d%d%/%d%d%/%d%d v?%d%.%d+",
    tagdate .. " " .. tagname)
end

kpse.set_program_name("kpsewhich")
if not release_date then
    dofile(kpse.lookup("l3build.lua"))
end