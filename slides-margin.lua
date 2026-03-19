function Pandoc(doc)
  local filename = quarto.doc.input_file
  local basename = filename:match("([^/\\]+)%.qmd$")
  
  if basename == nil then
    return doc
  end

  local chapters_with_slides = {
    ["01_setup"] = true, ["02_wrangling"] = true, ["03_demographics"] = true,
    ["04_figures"] = true, ["05_models"] = true, ["06_tables"] = true,
    ["07_manuscripts"] = true, ["08_exporting"] = true
  }

  if not chapters_with_slides[basename] then
    return doc
  end

  local html = '<div style="text-align: center; margin-bottom: 1em;">' ..
    '<a href="../slides/' .. basename .. '.html" ' ..
    'class="btn btn-outline-primary btn-sm" target="_blank">' ..
    '&#128202; Open slides &#8599;</a></div>' ..
    '<div style="text-align: center;">' ..
    '<a href="https://www.leibniz-zas.de/en/" target="_blank" rel="noopener noreferrer" style="display: inline-block; margin-right: 20px;">' ..
    '<img src="/logos/ZAS_Marke-Kurz_4c.png" alt="ZAS" style="height: 70px; width: auto;"/></a>' ..
    '<a href="https://www.leibniz-gemeinschaft.de/en/" target="_blank" rel="noopener noreferrer" style="display: inline-block;">' ..
    '<img src="/logos/Leibniz-Gemeinschaft-Logo-ENG_blau.png" alt="Leibniz" style="height: 60px; width: auto;"/></a>' ..
    '</div>'

  doc.meta['margin-footer'] = pandoc.MetaInlines({
    pandoc.RawInline('html', html)
  })

  return doc
end