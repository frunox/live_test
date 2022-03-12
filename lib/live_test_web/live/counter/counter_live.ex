defmodule LiveTestWeb.CounterLive do
  use Phoenix.LiveView

  # def render(assigns) do
  #   Phoenix.View.render(LiveTestWeb.CounterView, "index.html", assigns)
  # end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :val, 0)}
  end

  def handle_event("inc", _, socket) do
    {:noreply, update(socket, :val, &(&1 + 1))}
  end

  def handle_event("dec", _, socket) do
    {:noreply, update(socket, :val, &(&1 - 1))}
  end
end
