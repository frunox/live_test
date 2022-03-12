defmodule LiveTestWeb.FooLive do
  use Phoenix.LiveView
  # alias LiveTestWeb.PageView

  def mount(_params, _session, socket) do
    {:ok, assign(socket, msg: "XXX")}
  end

  def handle_event("keydown", %{"key" => key}, socket) do
    {:noreply, assign(socket, msg: key)}
  end

  # this is not the usual method - see below to access a template
  # def render(assigns) do
  #   ~H"""
  #   <h1 id="my-id">Hello!</h1>
  #   <h3 phx-window-keydown="keydown">
  #   <%= @msg %>
  #   </h3>
  #   """
  # end

  # render function not needed if properly named template is in the same folder
  # def render(assigns), do: Phoenix.View.render(PageView, "foo.html", assigns)

  ####### for counter example
  # def handle_event("inc", _, socket) do
  #   {:noreply, update(socket, :val, &(&1 + 1))}
  # end

  # def handle_event("dec", _, socket) do
  #   {:noreply, update(socket, :val, &(&1 - 1))}
  # end

  # def render(assigns) do
  #   ~H"""
  #   <div>
  #     <h1>The count is: <%= @val %></h1>
  #     <button phx-click="dec">-</button>
  #     <button phx-click="inc">+</button>
  #   </div>
  #   """
  # end
end
