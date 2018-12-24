module = "beamerauxtheme"

maindir = "."
sourcefiledir = maindir .. "/themes"
docfiledir = maindir .. "/doc"

sourcefiles = {"*.sty"}
cleanfiles = {"*.zip"}
textfiles = {"*.md", "LICENSE"}
unpackfiles = {}
typesetfiles = {"*.tex"}

packtdszip = false
flatten = false

tagfiles = {"*.sty", "README.md"}
function update_tag(file,content,tagname,tagdate)
    local tagdatefortex = string.gsub(tagdate,"%-","/")
    if string.match(file,"%.sty") then
      return string.gsub(content,
        "%d%d%d%d/%d%d/%d%d v?%d%.%d+",
        tagdatefortex .. " " .. tagname)
    else
      return string.gsub(content,
        "%d%d%d%d%-%d%d%-%d%d v?%d%.%d+",
        tagdate .. " " .. tagname)
    end
  end

kpse.set_program_name("kpsewhich")
if not release_date then
    dofile(kpse.lookup("l3build.lua"))
end