class Object
  def then(&block)
    yield self
  end
end

macro pipe(ast)
  {% uast = ast.stringify.gsub(/.>>/, ".then").id %}
  {{ uast }}
end
