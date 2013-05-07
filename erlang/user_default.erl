%%--------------------------------------------------------------------

-module (user_default).

-author ('serge@hq.idt.net').

%%====================================================================
%% Include files
%%====================================================================

%%====================================================================
%% External exports
%%====================================================================

-export ([help/0,
          dbgtc/1,
          dbgon/1,
          dbgon/2,
          dbgadd/1,
          dbgadd/2,
          dbgdel/1,
          dbgdel/2,
          dbgoff/0]).

%%====================================================================
%% Internal exports
%%====================================================================

%%====================================================================
%% Macros
%%====================================================================

%%====================================================================
%% Records
%%====================================================================

%%====================================================================
%% External functions
%%====================================================================

%%
%% help
%%

help () ->
  shell_default:help (),
  io:format ("** user extended commands **~n"),
  io:format ("dbgtc(File)    -- use dbg:trace_client() to read data from File~n"),
  io:format ("dbgon(M)       -- enable dbg tracer on all funs in module M~n"),
  io:format ("dbgon(M, F)    -- enable dbg tracer for module M and function F~n"),
  io:format ("dbgon(M, File) -- enable dbg tracer for module M and log to File~n"),
  io:format ("dbgadd(M)      -- enable call tracer for module M~n"),
  io:format ("dbgadd(M, F)   -- enable call tracer for function M:F~n"),
  io:format ("dbgdel(M)      -- disable call tracer for module M~n"),
  io:format ("dbgdel(M, F)   -- disable call tracer for function M:F~n"),
  io:format ("dbgoff()       -- disable dbg tracer (calls dbg:stop/0)~n"),
  true.

%%
%% dbgtc
%%

dbgtc (File) ->
  Fun = fun ({ trace, _, call, { M, F, A } }, _) ->
            io:format ("call: ~w:~w~w~n", [M, F, A]);
            ({ trace, _, return_from, { M, F, A }, R }, _) ->
            io:format ("retn: ~w:~w/~w -> ~w~n", [M, F, A, R]);
            (A, B) ->
            io:format ("~w: ~w~n", [A, B])
        end,
  dbg:trace_client (file, File, { Fun, [] }).

%%
%% dbgon
%%

dbgon (Module) ->
  case dbg:tracer () of
    { ok, _ } ->
      dbg:p (all, call),
      dbg:tpl (Module, [{ '_', [], [{ return_trace }] }]),
      ok;
    Else ->
      Else
  end.

%%
%% dbgon
%%

dbgon (Module, Fun) when is_atom (Fun) ->
  { ok, _ } = dbg:tracer (),
  dbg:p (all, call),
  dbg:tpl (Module, Fun, [{ '_', [], [{ return_trace }] }]),
  ok;

%%
%% dbgon
%%

dbgon (Module, File) when is_list (File) ->
  { ok, _ } = dbg:tracer (file, dbg:trace_port (file, File)),
  dbg:p (all, call),
  dbg:tpl (Module, [{ '_', [], [{ return_trace }] }]),
  ok.

%%
%% dbgadd
%%

dbgadd (Module) ->
  dbg:tpl (Module, [{ '_', [], [{ return_trace }] }]),
  ok.

%%
%% dbgadd
%%

dbgadd (Module, Fun) ->
  dbg:tpl (Module, Fun, [{ '_', [], [{ return_trace }] }]),
  ok.

%%
%% dbgdel
%%

dbgdel (Module) ->
  dbg:ctpl (Module),
  ok.

%%
%% dbgdel
%%

dbgdel (Module, Fun) ->
  dbg:ctpl (Module, Fun),
  ok.

%%
%% dbgoff
%%

dbgoff () ->
  dbg:stop ().

%%====================================================================
%% Internal functions
%%====================================================================
