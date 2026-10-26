(module
  (type (;0;) (func (param f64 i32 f64 f64 f64 f64 f64) (result f64)))
  (type (;1;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param f64 i32 f64 f64) (result f64)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param f64) (result f64)))
  (type (;6;) (func (param f64 f64 i32 f64 i32) (result f64)))
  (type (;7;) (func (param i64 i32) (result i32)))
  (type (;8;) (func (param f64 i32) (result f64)))
  (type (;9;) (func (param i64) (result i64)))
  (type (;10;) (func (param i32 i64 f64) (result f64)))
  (type (;11;) (func (param i64) (result i32)))
  (type (;12;) (func (param f64) (result i32)))
  (type (;13;) (func (param i32 i64 f64 i32 i32) (result f64)))
  (type (;14;) (func (param f64 f64) (result f64)))
  (type (;15;) (func (param i64 i32 i32 i64 i64 i64 i64 i64 i64) (result i64)))
  (type (;16;) (func))
  (import "wasi_snapshot_preview1" "fd_read" (func (;0;) (type 1)))
  (import "wasi_snapshot_preview1" "fd_write" (func (;1;) (type 1)))
  (func (;2;) (type 2) (param f64 i32 f64 f64) (result f64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    global.get 2
    local.set 24
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i64.trunc_sat_f64_s
              f64.convert_i64_s
              i64.reinterpret_f64
              local.get 2
              i64.reinterpret_f64
              i64.ne
              local.get 2
              f64.abs
              global.get 35
              f64.gt
              i32.or
              br_if 1 (;@4;)
              local.get 32
              local.set 42
              local.get 2
              i64.trunc_sat_f64_s
              local.set 30
              local.get 0
              local.set 43
              local.get 3
              local.set 44
              block  ;; label = @6
                local.get 1
                i32.const 8
                i32.sub
                i32.load
                local.tee 25
                i64.extend_i32_u
                local.set 29
                local.get 25
                local.set 19
                global.get 2
                local.set 23
                loop  ;; label = @7
                  local.get 23
                  global.set 2
                  local.get 42
                  local.get 44
                  f64.lt
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 44
                  local.get 42
                  f64.sub
                  i32.trunc_sat_f64_s
                  local.tee 7
                  global.get 14
                  i32.ge_u
                  if  ;; label = @8
                    unreachable
                  end
                  local.get 7
                  local.get 7
                  call 3
                  local.tee 8
                  local.set 4
                  local.get 43
                  i32.const 1
                  global.get 17
                  local.get 8
                  i64.extend_i32_u
                  i64.or
                  f64.reinterpret_i64
                  global.get 7
                  global.get 7
                  global.get 7
                  global.get 7
                  local.get 43
                  i64.reinterpret_f64
                  i64.const 32
                  i64.shr_u
                  i32.wrap_i64
                  global.get 16
                  i32.and
                  call_indirect (type 0)
                  local.tee 38
                  global.get 6
                  f64.le
                  if  ;; label = @8
                    local.get 24
                    global.set 2
                    global.get 6
                    return
                  end
                  local.get 38
                  global.get 29
                  f64.ge
                  local.get 38
                  global.get 22
                  f64.le
                  i32.and
                  if  ;; label = @8
                    i32.const 0
                    local.set 6
                    local.get 38
                    f64.ceil
                    i64.trunc_sat_f64_s
                    i32.wrap_i64
                    local.tee 5
                    i64.extend_i32_s
                    i64.const -1
                    i64.add
                    local.set 26
                    local.get 30
                    local.set 27
                    i32.const 1
                    local.get 30
                    local.tee 31
                    i64.const 0
                    local.get 31
                    i64.sub
                    local.get 31
                    i64.const 0
                    i64.ge_s
                    select
                    i64.const 2147483648
                    i64.le_s
                    i32.and
                    local.get 42
                    local.get 42
                    f64.floor
                    f64.eq
                    i32.and
                    local.get 42
                    f64.abs
                    global.get 30
                    f64.le
                    i32.and
                    local.get 26
                    local.get 30
                    i64.add
                    local.get 42
                    i64.trunc_sat_f64_s
                    local.tee 28
                    i64.add
                    local.get 29
                    i64.lt_s
                    i32.and
                    local.get 30
                    local.get 28
                    i64.add
                    i64.const 0
                    i64.ge_s
                    i32.and
                    local.get 26
                    local.get 4
                    i32.const 8
                    i32.sub
                    i32.load
                    i64.extend_i32_u
                    i64.lt_s
                    i32.and
                    local.get 28
                    global.get 10
                    i64.le_s
                    i32.and
                    local.get 42
                    i64.reinterpret_f64
                    global.get 26
                    i64.ne
                    i32.and
                    if  ;; label = @9
                      local.get 30
                      i32.wrap_i64
                      local.get 28
                      i32.wrap_i64
                      local.tee 9
                      i32.add
                      local.set 21
                      local.get 6
                      local.get 5
                      local.get 6
                      i32.sub
                      i32.const -16
                      i32.and
                      i32.add
                      local.get 6
                      local.get 6
                      local.get 5
                      i32.lt_s
                      select
                      local.set 20
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 6
                          local.get 20
                          i32.ge_s
                          br_if 1 (;@10;)
                          local.get 1
                          local.get 21
                          local.get 6
                          i32.add
                          i32.add
                          local.get 4
                          local.get 6
                          i32.add
                          v128.load
                          v128.store
                          local.get 6
                          i32.const 16
                          i32.add
                          local.set 6
                          br 0 (;@11;)
                        end
                      end
                      block  ;; label = @10
                        local.get 30
                        i32.wrap_i64
                        local.get 9
                        i32.add
                        local.set 21
                        loop  ;; label = @11
                          local.get 6
                          local.get 5
                          i32.ge_s
                          br_if 1 (;@10;)
                          local.get 1
                          local.get 21
                          local.get 6
                          i32.add
                          i32.add
                          local.get 4
                          local.get 6
                          i32.add
                          i32.load8_u
                          i32.store8
                          local.get 6
                          i32.const 1
                          i32.add
                          local.set 6
                          br 0 (;@11;)
                        end
                      end
                    else
                      br 4 (;@5;)
                    end
                  else
                    global.get 6
                    local.set 39
                    block  ;; label = @9
                      local.get 30
                      f64.convert_i64_s
                      local.get 42
                      f64.add
                      local.set 40
                      local.get 4
                      i32.const 8
                      i32.sub
                      i32.load
                      local.set 17
                      local.get 19
                      local.set 18
                      loop  ;; label = @10
                        local.get 39
                        local.get 38
                        f64.lt
                        i32.eqz
                        br_if 1 (;@9;)
                        local.get 40
                        local.get 39
                        f64.add
                        local.tee 41
                        i64.trunc_sat_f64_s
                        i32.wrap_i64
                        local.tee 11
                        f64.convert_i32_s
                        local.get 41
                        f64.eq
                        local.set 12
                        local.get 11
                        i32.const -1
                        local.get 12
                        select
                        local.set 10
                        local.get 39
                        i32.trunc_sat_f64_s
                        local.tee 13
                        local.get 17
                        i32.lt_u
                        if (result i32)  ;; label = @11
                          local.get 4
                          local.get 13
                          i32.add
                          i32.load8_u
                        else
                          i32.const 0
                        end
                        local.set 14
                        local.get 10
                        local.get 18
                        i32.lt_u
                        if  ;; label = @11
                          local.get 1
                          local.get 10
                          i32.add
                          local.get 14
                          i32.store8
                        end
                        local.get 39
                        global.get 8
                        f64.add
                        local.set 39
                        br 0 (;@10;)
                      end
                    end
                  end
                  local.get 42
                  local.get 38
                  f64.add
                  local.set 42
                  br 0 (;@7;)
                end
              end
              br 4 (;@1;)
            end
            local.get 38
            local.set 33
            local.get 42
            local.set 32
            i32.const 1
            local.set 22
            br 1 (;@3;)
          end
          local.get 1
          i32.const 8
          i32.sub
          i32.load
          local.tee 25
          i64.extend_i32_u
          local.set 29
          local.get 25
          local.set 19
        end
        global.get 2
        local.set 23
        loop  ;; label = @3
          local.get 23
          global.set 2
          local.get 22
          local.set 21
          i32.const 0
          local.set 22
          block  ;; label = @4
            block  ;; label = @5
              local.get 21
              i32.const 1
              i32.sub
              br_table 1 (;@4;) 0 (;@5;)
            end
            local.get 32
            local.get 3
            f64.lt
            i32.eqz
            br_if 2 (;@2;)
            local.get 3
            local.get 32
            f64.sub
            i32.trunc_sat_f64_s
            local.tee 7
            global.get 14
            i32.ge_u
            if  ;; label = @5
              unreachable
            end
            local.get 7
            local.get 7
            call 3
            local.tee 8
            local.set 4
            local.get 0
            i32.const 1
            global.get 17
            local.get 8
            i64.extend_i32_u
            i64.or
            f64.reinterpret_i64
            global.get 7
            global.get 7
            global.get 7
            global.get 7
            local.get 0
            i64.reinterpret_f64
            i64.const 32
            i64.shr_u
            i32.wrap_i64
            global.get 16
            i32.and
            call_indirect (type 0)
            local.set 33
          end
          local.get 33
          global.get 6
          f64.le
          if  ;; label = @4
            local.get 24
            global.set 2
            global.get 6
            return
          end
          local.get 33
          global.get 29
          f64.ge
          local.get 33
          global.get 22
          f64.le
          i32.and
          if  ;; label = @4
            i32.const 0
            local.set 6
            local.get 2
            local.get 2
            f64.floor
            f64.eq
            local.get 2
            f64.abs
            global.get 30
            f64.le
            i32.and
            local.get 32
            local.get 32
            f64.floor
            f64.eq
            i32.and
            local.get 32
            f64.abs
            global.get 30
            f64.le
            i32.and
            local.get 33
            f64.ceil
            i64.trunc_sat_f64_s
            i32.wrap_i64
            local.tee 5
            i64.extend_i32_s
            i64.const -1
            i64.add
            local.tee 26
            local.get 2
            i64.trunc_sat_f64_s
            local.tee 27
            i64.add
            local.get 32
            i64.trunc_sat_f64_s
            local.tee 28
            i64.add
            local.get 29
            i64.lt_s
            i32.and
            local.get 27
            local.get 28
            i64.add
            i64.const 0
            i64.ge_s
            i32.and
            local.get 26
            local.get 4
            i32.const 8
            i32.sub
            local.tee 25
            i32.load
            i64.extend_i32_u
            i64.lt_s
            i32.and
            local.get 28
            global.get 10
            i64.le_s
            i32.and
            local.get 32
            i64.reinterpret_f64
            global.get 26
            i64.ne
            i32.and
            if  ;; label = @5
              local.get 2
              local.get 28
              i32.wrap_i64
              local.tee 9
              f64.convert_i32_s
              f64.add
              local.set 35
              local.get 6
              local.get 5
              local.get 6
              i32.sub
              i32.const -16
              i32.and
              i32.add
              local.get 6
              local.get 6
              local.get 5
              i32.lt_s
              select
              local.set 20
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 6
                  local.get 20
                  i32.ge_s
                  br_if 1 (;@6;)
                  local.get 1
                  local.get 35
                  local.get 6
                  f64.convert_i32_s
                  f64.add
                  i64.trunc_sat_f64_s
                  i32.wrap_i64
                  i32.add
                  local.get 4
                  local.get 6
                  i32.add
                  v128.load
                  v128.store
                  local.get 6
                  i32.const 16
                  i32.add
                  local.set 6
                  br 0 (;@7;)
                end
              end
              block  ;; label = @6
                local.get 2
                local.get 9
                f64.convert_i32_s
                f64.add
                local.set 35
                loop  ;; label = @7
                  local.get 6
                  local.get 5
                  i32.ge_s
                  br_if 1 (;@6;)
                  local.get 1
                  local.get 35
                  local.get 6
                  f64.convert_i32_s
                  f64.add
                  i64.trunc_sat_f64_s
                  i32.wrap_i64
                  i32.add
                  local.get 4
                  local.get 6
                  i32.add
                  i32.load8_u
                  i32.store8
                  local.get 6
                  i32.const 1
                  i32.add
                  local.set 6
                  br 0 (;@7;)
                end
              end
            else
              block  ;; label = @6
                local.get 2
                local.get 32
                f64.add
                local.set 36
                local.get 25
                i32.load
                local.set 15
                local.get 19
                local.set 16
                loop  ;; label = @7
                  local.get 6
                  local.get 5
                  i32.ge_s
                  br_if 1 (;@6;)
                  local.get 36
                  local.get 6
                  f64.convert_i32_s
                  f64.add
                  local.tee 42
                  i64.trunc_sat_f64_s
                  i32.wrap_i64
                  local.tee 21
                  f64.convert_i32_s
                  local.get 42
                  f64.eq
                  local.set 25
                  local.get 21
                  i32.const -1
                  local.get 25
                  select
                  local.set 21
                  local.get 6
                  local.get 15
                  i32.lt_u
                  if (result i32)  ;; label = @8
                    local.get 4
                    local.get 6
                    i32.add
                    i32.load8_u
                  else
                    i32.const 0
                  end
                  local.set 25
                  local.get 21
                  local.get 16
                  i32.lt_u
                  if  ;; label = @8
                    local.get 1
                    local.get 21
                    i32.add
                    local.get 25
                    i32.store8
                  end
                  local.get 6
                  i32.const 1
                  i32.add
                  local.set 6
                  br 0 (;@7;)
                end
              end
            end
          else
            global.get 6
            local.set 34
            block  ;; label = @5
              local.get 2
              local.get 32
              f64.add
              local.set 37
              local.get 4
              i32.const 8
              i32.sub
              i32.load
              local.set 17
              local.get 19
              local.set 18
              loop  ;; label = @6
                local.get 34
                local.get 33
                f64.lt
                i32.eqz
                br_if 1 (;@5;)
                local.get 37
                local.get 34
                f64.add
                local.tee 42
                i64.trunc_sat_f64_s
                i32.wrap_i64
                local.tee 11
                f64.convert_i32_s
                local.get 42
                f64.eq
                local.set 12
                local.get 11
                i32.const -1
                local.get 12
                select
                local.set 10
                local.get 34
                i32.trunc_sat_f64_s
                local.tee 13
                local.get 17
                i32.lt_u
                if (result i32)  ;; label = @7
                  local.get 4
                  local.get 13
                  i32.add
                  i32.load8_u
                else
                  i32.const 0
                end
                local.set 14
                local.get 10
                local.get 18
                i32.lt_u
                if  ;; label = @7
                  local.get 1
                  local.get 10
                  i32.add
                  local.get 14
                  i32.store8
                end
                local.get 34
                global.get 8
                f64.add
                local.set 34
                br 0 (;@6;)
              end
            end
          end
          local.get 32
          local.get 33
          f64.add
          local.set 32
          br 0 (;@3;)
        end
      end
    end
    local.get 24
    global.set 2
    global.get 8
    return)
  (func (;3;) (type 3) (param i32 i32) (result i32)
    (local i32)
    i32.const 16
    local.get 1
    i32.add
    call 6
    local.tee 2
    i64.const 0
    i64.store
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    i32.const 16
    i32.add
    local.tee 0
    i32.const 0
    local.get 1
    memory.fill
    local.get 0)
  (func (;4;) (type 4) (param i32) (result i32)
    global.get 2
    return)
  (func (;5;) (type 5) (param f64) (result f64)
    (local f64 f64 f64)
    local.get 0
    f64.abs
    local.tee 1
    global.get 9
    local.tee 3
    f64.abs
    local.tee 2
    f64.lt
    if  ;; label = @1
      local.get 0
      return
    end
    local.get 1
    local.get 2
    global.get 36
    f64.mul
    f64.lt
    if  ;; label = @1
      local.get 1
      local.get 2
      f64.sub
      local.get 0
      f64.copysign
      return
    end
    local.get 0
    local.get 3
    call 18)
  (func (;6;) (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 2
    local.set 1
    local.get 0
    i32.const 4096
    i32.ge_u
    if  ;; label = @1
      local.get 1
      global.get 3
      local.get 1
      i32.sub
      i32.const 4095
      i32.and
      i32.add
      local.set 1
      global.get 3
      i32.const 1024
      i32.add
      i32.const 4095
      i32.and
      global.set 3
    end
    local.get 1
    local.get 0
    i32.add
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee 0
    global.get 2
    i32.lt_u
    if  ;; label = @1
      global.get 37
      global.set 5
      unreachable
    end
    local.get 0
    global.get 0
    i32.gt_u
    if  ;; label = @1
      local.get 0
      i32.const 16
      i32.shr_u
      local.get 0
      i32.const 65535
      i32.and
      i32.eqz
      i32.eqz
      i32.add
      local.tee 3
      memory.size
      i32.gt_u
      if  ;; label = @2
        local.get 3
        memory.size
        i32.sub
        local.tee 2
        memory.size
        i32.const 4
        memory.size
        i32.const 2048
        i32.ge_u
        memory.size
        i32.const 4096
        i32.ge_u
        select
        i32.shr_u
        local.tee 4
        i32.lt_u
        if  ;; label = @3
          local.get 4
          local.set 2
        end
        local.get 2
        memory.grow
        i32.const -1
        i32.eq
        if  ;; label = @3
          local.get 3
          memory.size
          i32.sub
          memory.grow
          i32.const -1
          i32.eq
          if  ;; label = @4
            global.get 37
            global.set 5
            unreachable
          end
        end
      end
      memory.size
      i32.const 16
      i32.shl
      global.set 0
      memory.size
      i64.extend_i32_u
      i64.const 16
      i64.shl
      global.set 1
    end
    local.get 0
    global.set 2
    local.get 1)
  (func (;7;) (type 4) (param i32) (result i32)
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 8
        i32.lt_u
        local.get 0
        i64.extend_i32_u
        global.get 1
        i64.gt_u
        i32.or
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.sub
        i32.load
        i32.const -1
        i32.ne
        br_if 1 (;@1;)
        local.get 0
        i32.const 8
        i32.sub
        i32.load
        local.set 0
        br 0 (;@2;)
      end
    end
    local.get 0)
  (func (;8;) (type 6) (param f64 f64 i32 f64 i32) (result f64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 f64 f64 f64 f64 f64)
    global.get 2
    local.set 29
    i32.const 1
    local.set 5
    global.get 4
    local.set 10
    global.get 2
    local.tee 9
    global.get 4
    i32.gt_u
    if  ;; label = @1
      local.get 9
      global.set 4
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          local.set 28
          local.get 3
          local.set 38
          local.get 1
          local.set 39
          local.get 0
          local.set 40
          block  ;; label = @4
            local.get 2
            i32.const 8
            i32.sub
            i32.load
            local.tee 30
            i64.extend_i32_u
            local.set 35
            local.get 30
            local.set 30
            loop  ;; label = @5
              global.get 2
              local.get 9
              i32.sub
              global.get 20
              i32.gt_u
              if  ;; label = @6
                local.get 9
                call 4
                local.set 9
              end
              local.get 38
              global.get 6
              f64.gt
              i32.eqz
              br_if 1 (;@4;)
              local.get 38
              local.get 4
              f64.convert_i32_s
              local.tee 36
              f64.lt
              if  ;; label = @6
                local.get 38
                local.set 36
              end
              local.get 40
              local.get 2
              global.get 6
              local.get 36
              call 2
              local.tee 37
              local.get 37
              f64.eq
              local.get 37
              global.get 6
              f64.ne
              i32.and
              local.get 37
              i64.reinterpret_f64
              global.get 12
              i64.eq
              i32.or
              i32.eqz
              if  ;; label = @6
                i32.const 0
                local.set 28
                br 2 (;@4;)
              end
              global.get 13
              local.get 36
              global.get 18
              f64.add
              local.tee 37
              f64.add
              i32.trunc_sat_f64_s
              local.tee 11
              global.get 14
              i32.ge_u
              if  ;; label = @6
                unreachable
              end
              local.get 11
              local.get 11
              call 3
              local.tee 12
              local.set 6
              local.get 37
              i64.trunc_sat_f64_s
              i32.wrap_i64
              local.tee 31
              global.get 11
              i32.and
              local.set 13
              i32.const 0
              local.get 12
              i32.const 8
              i32.sub
              i32.load
              i32.lt_u
              if  ;; label = @6
                local.get 6
                local.get 13
                i32.store8
              end
              i32.const 1
              local.set 14
              local.get 31
              i32.const 8
              i32.shr_s
              global.get 11
              i32.and
              local.set 15
              i32.const 1
              local.get 6
              i32.const 8
              i32.sub
              local.tee 32
              i32.load
              i32.lt_u
              if  ;; label = @6
                local.get 6
                local.get 14
                i32.add
                local.get 15
                i32.store8
              end
              i32.const 2
              local.set 16
              local.get 31
              i32.const 16
              i32.shr_s
              global.get 11
              i32.and
              local.set 17
              i32.const 2
              local.get 32
              i32.load
              i32.lt_u
              if  ;; label = @6
                local.get 6
                local.get 16
                i32.add
                local.get 17
                i32.store8
              end
              i32.const 3
              local.set 18
              local.get 31
              i32.const 24
              i32.shr_s
              global.get 11
              i32.and
              local.set 19
              i32.const 3
              local.get 32
              i32.load
              i32.lt_u
              if  ;; label = @6
                local.get 6
                local.get 18
                i32.add
                local.get 19
                i32.store8
              end
              i32.const 4
              local.set 20
              i32.const 4
              local.get 32
              i32.load
              i32.lt_u
              if  ;; label = @6
                local.get 6
                local.get 20
                i32.add
                i32.const 34
                i32.store8
              end
              i32.const 0
              local.set 8
              local.get 36
              f64.ceil
              i64.trunc_sat_f64_s
              i32.wrap_i64
              local.tee 7
              i64.extend_i32_s
              i64.const -1
              i64.add
              local.tee 34
              i64.const 5
              i64.add
              local.get 32
              i32.load
              i64.extend_i32_u
              i64.lt_s
              local.get 34
              local.get 35
              i64.lt_s
              i32.and
              if  ;; label = @6
                local.get 2
                local.get 8
                i32.add
                local.set 26
                local.get 6
                local.get 8
                i32.add
                local.set 27
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 8
                    local.get 7
                    i32.ge_s
                    br_if 1 (;@7;)
                    local.get 27
                    local.get 26
                    i32.load8_u
                    i32.store8 offset=5
                    local.get 8
                    i32.const 1
                    i32.add
                    local.set 8
                    local.get 26
                    i32.const 1
                    i32.add
                    local.set 26
                    local.get 27
                    i32.const 1
                    i32.add
                    local.set 27
                    br 0 (;@8;)
                  end
                end
              else
                br 3 (;@3;)
              end
              global.get 13
              local.get 36
              f64.add
              global.get 8
              f64.add
              local.tee 37
              i64.trunc_sat_f64_s
              i32.wrap_i64
              local.tee 22
              f64.convert_i32_s
              local.get 37
              f64.eq
              local.set 23
              local.get 22
              i32.const -1
              local.get 23
              select
              local.tee 21
              local.get 32
              i32.load
              i32.lt_u
              if  ;; label = @6
                local.get 6
                local.get 21
                i32.add
                i32.const 34
                i32.store8
              end
              local.get 39
              i32.const 1
              global.get 17
              local.get 6
              i64.extend_i32_u
              i64.or
              f64.reinterpret_i64
              global.get 7
              global.get 7
              global.get 7
              global.get 7
              local.get 39
              i64.reinterpret_f64
              i64.const 32
              i64.shr_u
              i32.wrap_i64
              global.get 16
              i32.and
              call_indirect (type 0)
              drop
              local.get 38
              local.get 36
              f64.sub
              local.set 38
              br 0 (;@5;)
            end
          end
          local.get 28
          local.set 5
          br 2 (;@1;)
        end
        local.get 36
        local.set 39
        local.get 28
        local.set 5
        local.get 38
        local.set 3
        i32.const 1
        local.set 32
        loop  ;; label = @3
          local.get 32
          local.set 28
          i32.const 0
          local.set 32
          block  ;; label = @4
            block  ;; label = @5
              local.get 28
              i32.const 1
              i32.sub
              br_table 1 (;@4;) 0 (;@5;)
            end
            global.get 2
            local.get 9
            i32.sub
            global.get 20
            i32.gt_u
            if  ;; label = @5
              local.get 9
              call 4
              local.set 9
            end
            local.get 3
            global.get 6
            f64.gt
            i32.eqz
            br_if 2 (;@2;)
            local.get 3
            local.get 4
            f64.convert_i32_s
            local.tee 39
            f64.lt
            if  ;; label = @5
              local.get 3
              local.set 39
            end
            local.get 0
            local.get 2
            global.get 6
            local.get 39
            call 2
            local.tee 38
            local.get 38
            f64.eq
            local.get 38
            global.get 6
            f64.ne
            i32.and
            local.get 38
            i64.reinterpret_f64
            global.get 12
            i64.eq
            i32.or
            i32.eqz
            if  ;; label = @5
              i32.const 0
              local.set 5
              br 3 (;@2;)
            end
            global.get 13
            local.get 39
            global.get 18
            f64.add
            local.tee 38
            f64.add
            i32.trunc_sat_f64_s
            local.tee 11
            global.get 14
            i32.ge_u
            if  ;; label = @5
              unreachable
            end
            local.get 11
            local.get 11
            call 3
            local.tee 12
            local.set 6
            local.get 38
            i64.trunc_sat_f64_s
            i32.wrap_i64
            local.tee 31
            global.get 11
            i32.and
            local.set 13
            i32.const 0
            local.get 12
            i32.const 8
            i32.sub
            i32.load
            i32.lt_u
            if  ;; label = @5
              local.get 6
              local.get 13
              i32.store8
            end
            i32.const 1
            local.set 14
            local.get 31
            i32.const 8
            i32.shr_s
            global.get 11
            i32.and
            local.set 15
            i32.const 1
            local.get 6
            i32.const 8
            i32.sub
            local.tee 33
            i32.load
            i32.lt_u
            if  ;; label = @5
              local.get 6
              local.get 14
              i32.add
              local.get 15
              i32.store8
            end
            i32.const 2
            local.set 16
            local.get 31
            i32.const 16
            i32.shr_s
            global.get 11
            i32.and
            local.set 17
            i32.const 2
            local.get 33
            i32.load
            i32.lt_u
            if  ;; label = @5
              local.get 6
              local.get 16
              i32.add
              local.get 17
              i32.store8
            end
            i32.const 3
            local.set 18
            local.get 31
            i32.const 24
            i32.shr_s
            global.get 11
            i32.and
            local.set 19
            i32.const 3
            local.get 33
            i32.load
            i32.lt_u
            if  ;; label = @5
              local.get 6
              local.get 18
              i32.add
              local.get 19
              i32.store8
            end
            i32.const 4
            local.set 20
            i32.const 4
            local.get 33
            i32.load
            i32.lt_u
            if  ;; label = @5
              local.get 6
              local.get 20
              i32.add
              i32.const 34
              i32.store8
            end
          end
          i32.const 0
          local.set 8
          local.get 39
          f64.ceil
          i64.trunc_sat_f64_s
          i32.wrap_i64
          local.tee 7
          i64.extend_i32_s
          i64.const -1
          i64.add
          local.tee 34
          i64.const 5
          i64.add
          local.get 6
          i32.const 8
          i32.sub
          local.tee 31
          i32.load
          i64.extend_i32_u
          i64.lt_s
          local.get 34
          local.get 35
          i64.lt_s
          i32.and
          if  ;; label = @4
            local.get 2
            local.get 8
            i32.add
            local.set 26
            local.get 6
            local.get 8
            i32.add
            local.set 27
            block  ;; label = @5
              loop  ;; label = @6
                local.get 8
                local.get 7
                i32.ge_s
                br_if 1 (;@5;)
                local.get 27
                local.get 26
                i32.load8_u
                i32.store8 offset=5
                local.get 8
                i32.const 1
                i32.add
                local.set 8
                local.get 26
                i32.const 1
                i32.add
                local.set 26
                local.get 27
                i32.const 1
                i32.add
                local.set 27
                br 0 (;@6;)
              end
            end
          else
            block  ;; label = @5
              local.get 30
              local.set 24
              local.get 31
              i32.load
              local.set 25
              loop  ;; label = @6
                local.get 8
                local.get 7
                i32.ge_s
                br_if 1 (;@5;)
                i32.const 5
                local.get 8
                i32.add
                local.set 28
                local.get 8
                local.get 24
                i32.lt_u
                if (result i32)  ;; label = @7
                  local.get 2
                  local.get 8
                  i32.add
                  i32.load8_u
                else
                  i32.const 0
                end
                local.set 33
                local.get 28
                local.get 25
                i32.lt_u
                if  ;; label = @7
                  local.get 6
                  local.get 28
                  i32.add
                  local.get 33
                  i32.store8
                end
                local.get 8
                i32.const 1
                i32.add
                local.set 8
                br 0 (;@6;)
              end
            end
          end
          global.get 13
          local.get 39
          f64.add
          global.get 8
          f64.add
          local.tee 38
          i64.trunc_sat_f64_s
          i32.wrap_i64
          local.tee 22
          f64.convert_i32_s
          local.get 38
          f64.eq
          local.set 23
          local.get 22
          i32.const -1
          local.get 23
          select
          local.tee 21
          local.get 31
          i32.load
          i32.lt_u
          if  ;; label = @4
            local.get 6
            local.get 21
            i32.add
            i32.const 34
            i32.store8
          end
          local.get 1
          i32.const 1
          global.get 17
          local.get 6
          i64.extend_i32_u
          i64.or
          f64.reinterpret_i64
          global.get 7
          global.get 7
          global.get 7
          global.get 7
          local.get 1
          i64.reinterpret_f64
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          global.get 16
          i32.and
          call_indirect (type 0)
          drop
          local.get 3
          local.get 39
          f64.sub
          local.set 3
          br 0 (;@3;)
        end
      end
    end
    local.get 10
    global.set 4
    local.get 29
    global.set 2
    local.get 5
    f64.convert_i32_s
    return)
  (func (;9;) (type 7) (param i64 i32) (result i32)
    local.get 0
    i64.const 70368744177664
    i64.and
    i64.eqz
    i32.eqz
    if (result i32)  ;; label = @1
      local.get 1
      local.get 0
      i64.const 42
      i64.shr_u
      i64.const 7
      i64.and
      i32.wrap_i64
      i32.ge_u
      if (result i32)  ;; label = @2
        i32.const 0
      else
        local.get 0
        local.get 1
        i64.extend_i32_u
        i64.const 7
        i64.mul
        i64.shr_u
        i64.const 127
        i64.and
        i32.wrap_i64
      end
    else
      local.get 1
      local.get 0
      i64.const 35184372088832
      i64.and
      i64.eqz
      i32.eqz
      if (result i32)  ;; label = @2
        local.get 0
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        i32.const 8191
        i32.and
      else
        local.get 0
        i32.wrap_i64
        i32.const 4
        i32.lt_u
        if (result i32)  ;; label = @3
          i32.const 0
        else
          local.get 0
          i32.wrap_i64
          i32.const 4
          i32.sub
          i32.load
        end
      end
      i32.ge_u
      if (result i32)  ;; label = @2
        i32.const 0
      else
        local.get 0
        i32.wrap_i64
        local.get 1
        i32.const 1
        i32.shl
        i32.add
        i32.load16_u
      end
    end)
  (func (;10;) (type 8) (param f64 i32) (result f64)
    (local i64)
    local.get 0
    i64.reinterpret_f64
    local.tee 2
    global.get 24
    i64.eq
    local.get 1
    local.get 2
    global.get 38
    i64.eq
    i32.and
    i32.or
    if  ;; label = @1
      global.get 25
      return
    end
    local.get 2
    global.get 31
    i64.and
    global.get 32
    i64.eq
    local.get 2
    global.get 39
    i64.and
    i64.eqz
    i32.eqz
    i32.and
    if  ;; label = @1
      i64.const 9221120249925992575
      global.set 5
      unreachable
    end
    local.get 0
    f64.trunc
    local.get 0
    f64.eq
    local.get 0
    global.get 25
    f64.ge
    local.get 0
    f64.const 0x1.fffffffffffffp+52 (;=9.0072e+15;)
    f64.le
    i32.and
    i32.and
    i32.eqz
    if  ;; label = @1
      global.get 34
      global.set 5
      unreachable
    end
    local.get 0)
  (func (;11;) (type 9) (param i64) (result i64)
    (local i32 i32 i32 i32)
    local.get 0
    global.get 31
    i64.and
    global.get 32
    i64.eq
    local.get 0
    i64.const 47
    i64.shr_u
    i32.wrap_i64
    i32.const 15
    i32.and
    i32.const 3
    i32.eq
    i32.and
    i32.eqz
    if  ;; label = @1
      global.get 40
      global.set 5
      unreachable
    end
    local.get 0
    i32.wrap_i64
    local.set 3
    local.get 0
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.tee 4
    i32.const 8
    i32.and
    if (result i32)  ;; label = @1
      local.get 3
      i32.const 4
      i32.add
      i32.load
    else
      local.get 3
    end
    i64.extend_i32_u
    i64.const 32
    i64.shl
    block (result i32)  ;; label = @1
      local.get 0
      i64.const 47
      i64.shr_u
      i32.wrap_i64
      i32.const 65521
      i32.eq
      local.get 0
      i32.wrap_i64
      local.tee 3
      i32.const 8
      i32.ge_u
      i32.and
      if  ;; label = @2
        local.get 3
        i64.extend_i32_u
        global.get 1
        i64.le_u
        if  ;; label = @3
          local.get 3
          i32.const 4
          i32.sub
          i32.load
          i32.const -1
          i32.eq
          if  ;; label = @4
            local.get 3
            call 7
            local.set 3
          end
        end
        local.get 3
        i32.const 8
        i32.sub
        i32.load
        br 1 (;@1;)
      end
      local.get 0
      i64.const 35
      i64.shr_u
      i32.wrap_i64
      i32.const -2
      i32.and
      i32.const 268382208
      i32.eq
      local.get 0
      i32.wrap_i64
      local.tee 3
      i32.const 8
      i32.ge_u
      i32.and
      if  ;; label = @2
        local.get 0
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        local.tee 1
        i32.const 7
        i32.and
        local.tee 2
        i32.const 1
        i32.shr_u
        local.get 2
        i32.const 6
        i32.eq
        i32.sub
        local.set 2
        local.get 3
        local.get 3
        i32.const 8
        i32.sub
        local.get 1
        i32.const 8
        i32.and
        select
        i32.load
        local.get 2
        i32.shr_u
        br 1 (;@1;)
      end
      local.get 0
      call 17
    end
    local.get 4
    i32.const 7
    i32.and
    call 15
    i32.shl
    i64.extend_i32_u
    i64.or)
  (func (;12;) (type 10) (param i32 i64 f64) (result f64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 f64 f64)
    local.get 1
    global.get 31
    i64.and
    global.get 32
    i64.eq
    local.get 1
    i64.const 47
    i64.shr_u
    i32.wrap_i64
    i32.const 15
    i32.and
    i32.const 4
    i32.eq
    i32.and
    if  ;; label = @1
      local.get 2
      i64.reinterpret_f64
      local.tee 17
      global.get 24
      i64.eq
      local.get 17
      global.get 38
      i64.eq
      i32.or
      i32.eqz
      if  ;; label = @2
        global.get 40
        global.set 5
        unreachable
      end
      local.get 1
      call 13
      i32.const 3
      i32.mul
      local.tee 4
      call 6
      local.tee 5
      local.set 6
      local.get 1
      call 13
      local.set 7
      block  ;; label = @2
        loop  ;; label = @3
          local.get 8
          local.get 7
          i32.ge_u
          br_if 1 (;@2;)
          i32.const 1
          local.set 12
          local.get 1
          local.get 8
          call 9
          local.tee 10
          i32.const 55296
          i32.sub
          i32.const 2048
          i32.lt_u
          if  ;; label = @4
            i32.const 0
            local.set 11
            local.get 10
            i32.const 56320
            i32.lt_u
            local.get 8
            i32.const 1
            i32.add
            local.tee 14
            local.get 7
            i32.lt_u
            i32.and
            if  ;; label = @5
              local.get 1
              local.get 14
              call 9
              local.set 11
            end
            local.get 11
            i32.const 56320
            i32.sub
            local.tee 14
            i32.const 1024
            i32.lt_u
            if  ;; label = @5
              global.get 20
              local.get 10
              i32.const 55296
              i32.sub
              i32.const 10
              i32.shl
              local.get 14
              i32.add
              i32.add
              local.set 10
              i32.const 2
              local.set 12
            else
              i32.const 65533
              local.set 10
            end
          end
          local.get 10
          i32.const 128
          i32.lt_u
          if (result i32)  ;; label = @4
            i32.const 1
          else
            local.get 10
            i32.const 2048
            i32.lt_u
            if (result i32)  ;; label = @5
              i32.const 2
            else
              i32.const 3
              i32.const 4
              local.get 10
              global.get 20
              i32.lt_u
              select
            end
          end
          local.tee 13
          local.get 4
          local.get 9
          i32.sub
          i32.gt_u
          br_if 1 (;@2;)
          local.get 6
          local.get 9
          i32.add
          local.set 11
          local.get 13
          i32.const 1
          i32.eq
          if  ;; label = @4
            local.get 11
            local.get 10
            i32.store8
          else
            local.get 13
            i32.const 2
            i32.eq
            if  ;; label = @5
              local.get 11
              i32.const 192
              local.get 10
              i32.const 6
              i32.shr_u
              i32.or
              i32.store8
            else
              local.get 13
              i32.const 3
              i32.eq
              if  ;; label = @6
                local.get 11
                i32.const 224
                local.get 10
                i32.const 12
                i32.shr_u
                i32.or
                i32.store8
              else
                local.get 11
                i32.const 240
                local.get 10
                i32.const 18
                i32.shr_u
                i32.or
                i32.store8
                local.get 11
                i32.const 128
                local.get 10
                i32.const 12
                i32.shr_u
                i32.const 63
                i32.and
                i32.or
                i32.store8 offset=1
              end
              local.get 11
              local.get 13
              i32.const 2
              i32.sub
              i32.add
              i32.const 128
              local.get 10
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.or
              i32.store8
            end
            local.get 11
            local.get 13
            i32.const 1
            i32.sub
            i32.add
            i32.const 128
            local.get 10
            i32.const 63
            i32.and
            i32.or
            i32.store8
          end
          local.get 8
          local.get 12
          i32.add
          local.set 8
          local.get 9
          local.get 13
          i32.add
          local.set 9
          br 0 (;@3;)
        end
      end
      local.get 5
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 8
      i64.extend_i32_u
      local.get 9
      i64.extend_i32_u
      i64.const 32
      i64.shl
      i64.or
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.tee 4
      i64.extend_i32_u
      i64.or
      local.set 16
    else
      local.get 1
      call 11
      local.set 16
      local.get 2
      i32.const 1
      call 10
      local.set 2
      local.get 16
      i32.wrap_i64
      f64.convert_i32_u
      local.set 18
      i32.const 1
      local.get 19
      i64.reinterpret_f64
      global.get 31
      i64.and
      global.get 32
      i64.eq
      local.get 19
      i64.reinterpret_f64
      global.get 39
      i64.and
      i64.eqz
      i32.eqz
      i32.and
      i32.or
      if  ;; label = @2
        local.get 18
        local.get 2
        f64.sub
        local.set 19
      end
      local.get 2
      local.get 18
      f64.gt
      local.get 19
      local.get 18
      local.get 2
      f64.sub
      f64.gt
      local.get 19
      global.get 25
      f64.lt
      local.get 19
      f64.trunc
      local.get 19
      f64.ne
      i32.or
      i32.or
      i32.or
      if  ;; label = @2
        global.get 34
        global.set 5
        unreachable
      end
      local.get 16
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.get 2
      i32.trunc_f64_u
      i32.add
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 19
      i32.trunc_f64_u
      i64.extend_i32_u
      i64.or
      local.set 16
    end
    local.get 16
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.set 4
    local.get 16
    i32.wrap_i64
    local.set 5
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        local.get 5
        i32.ge_u
        br_if 1 (;@1;)
        i32.const 676
        local.get 4
        local.get 3
        i32.add
        i32.store
        i32.const 680
        local.get 5
        local.get 3
        i32.sub
        i32.store
        local.get 0
        i32.const 676
        i32.const 1
        i32.const 684
        call 1
        local.tee 6
        if  ;; label = @3
          local.get 6
          f64.convert_i32_u
          i64.reinterpret_f64
          global.set 5
          unreachable
        end
        i32.const 684
        i32.load
        local.tee 15
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        local.get 15
        i32.add
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 3
    f64.convert_i32_u)
  (func (;13;) (type 11) (param i64) (result i32)
    (local i32)
    local.get 0
    i64.const 47
    i64.shr_u
    i64.const 15
    i64.and
    i32.wrap_i64
    i32.const 4
    i32.eq
    if (result i32)  ;; label = @1
      local.get 0
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      global.get 16
      i32.and
      local.tee 1
      i32.const 16384
      i32.and
      if (result i32)  ;; label = @2
        local.get 1
        i32.const 10
        i32.shr_u
        i32.const 7
        i32.and
      else
        local.get 1
        i32.const 8192
        i32.and
        if (result i32)  ;; label = @3
          local.get 1
          i32.const 8191
          i32.and
        else
          local.get 0
          i32.wrap_i64
          local.tee 1
          i32.const 4
          i32.ge_u
          if (result i32)  ;; label = @4
            local.get 1
            i32.const 4
            i32.sub
            i32.load
          else
            i32.const 0
          end
        end
      end
    else
      i32.const 0
    end)
  (func (;14;) (type 12) (param f64) (result i32)
    (local i32 i64)
    local.get 0
    f64.abs
    f64.const 0x1p+63 (;=9.22337e+18;)
    f64.lt
    if  ;; label = @1
      local.get 0
      i64.trunc_sat_f64_s
      i32.wrap_i64
      return
    end
    local.get 0
    i64.reinterpret_f64
    local.tee 2
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    i32.const 2047
    i32.and
    local.tee 1
    i32.const 1107
    i32.ge_u
    if  ;; label = @1
      i32.const 0
      return
    end
    i32.const 0
    local.get 2
    i32.wrap_i64
    local.get 1
    i32.const 1075
    i32.sub
    i32.shl
    local.tee 1
    i32.sub
    local.get 1
    local.get 2
    i64.const 0
    i64.lt_s
    select)
  (func (;15;) (type 4) (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.shr_u
    local.get 0
    i32.const 6
    i32.eq
    i32.sub)
  (func (;16;) (type 13) (param i32 i64 f64 i32 i32) (result f64)
    (local f64)
    local.get 1
    call 11
    local.set 1
    local.get 2
    i32.const 0
    call 10
    local.set 2
    local.get 1
    i32.wrap_i64
    f64.convert_i32_u
    local.set 5
    local.get 4
    if  ;; label = @1
      local.get 5
      local.get 2
      f64.sub
      i64.trunc_sat_f64_s
      i32.wrap_i64
      local.set 3
    end
    local.get 3
    i32.eqz
    if  ;; label = @1
      global.get 25
      return
    end
    local.get 5
    global.get 25
    f64.eq
    if  ;; label = @1
      i64.const 9221120249925992576
      global.set 5
      unreachable
    end
    local.get 3
    i32.const 0
    i32.lt_s
    local.get 2
    local.get 3
    f64.convert_i32_s
    f64.add
    local.get 5
    f64.gt
    i32.or
    if  ;; label = @1
      global.get 34
      global.set 5
      unreachable
    end
    i32.const 664
    local.get 1
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.get 2
    i32.trunc_f64_u
    i32.add
    i32.store
    i32.const 668
    local.get 3
    i32.store
    local.get 0
    i32.const 664
    i32.const 1
    i32.const 672
    call 0
    local.tee 0
    if  ;; label = @1
      local.get 0
      f64.convert_i32_u
      i64.reinterpret_f64
      global.set 5
      unreachable
    end
    i32.const 672
    i32.load
    f64.convert_i32_u)
  (func (;17;) (type 11) (param i64) (result i32)
    (local i32 i32 i32 i32 i64)
    local.get 0
    local.set 5
    local.get 0
    i64.const 47
    i64.shr_u
    i64.const 15
    i64.and
    i32.wrap_i64
    local.tee 3
    local.tee 1
    i32.const 1
    i32.eq
    local.get 0
    i32.wrap_i64
    local.tee 2
    i32.const 8
    i32.ge_u
    i32.and
    if (result i32)  ;; label = @1
      local.get 2
      i64.extend_i32_u
      global.get 1
      i64.le_u
      if  ;; label = @2
        local.get 2
        i32.const 4
        i32.sub
        i32.load
        i32.const -1
        i32.eq
        if  ;; label = @3
          local.get 2
          call 7
          local.set 2
        end
      end
      local.get 2
      i32.const 8
      i32.sub
      i32.load
    else
      local.get 1
      i32.const 3
      i32.eq
      local.tee 4
      local.get 1
      i32.const 2
      i32.eq
      local.get 1
      i32.const 7
      i32.eq
      local.get 1
      i32.const 8
      i32.eq
      local.get 1
      i32.const 9
      i32.eq
      i32.or
      i32.or
      i32.or
      i32.or
      local.get 2
      i32.const 8
      i32.ge_u
      i32.and
      if (result i32)  ;; label = @2
        local.get 4
        if (result i32)  ;; label = @3
          local.get 5
          i64.const 32
          i64.shr_u
          i64.const 32767
          i64.and
          i32.wrap_i64
          local.tee 1
          i32.const 128
          i32.and
          if (result i32)  ;; label = @4
            i32.const 0
          else
            local.get 2
            local.get 2
            i32.const 8
            i32.sub
            local.get 1
            i32.const 8
            i32.and
            select
            i32.load
            local.get 1
            i32.const 7
            i32.and
            call 15
            i32.shr_u
          end
        else
          local.get 0
          i32.wrap_i64
          local.set 1
          i32.const 1
          local.get 3
          i32.shl
          i32.const 898
          i32.and
          if  ;; label = @4
            local.get 1
            i32.const 8
            i32.ge_u
            local.get 1
            i64.extend_i32_u
            global.get 1
            i64.le_u
            i32.and
            if  ;; label = @5
              local.get 1
              i32.const 4
              i32.sub
              i32.load
              i32.const -1
              i32.eq
              if  ;; label = @6
                local.get 1
                call 7
                local.set 1
              end
            end
          end
          local.get 1
          i32.const 8
          i32.sub
          i32.load
        end
      else
        i32.const 0
      end
    end)
  (func (;18;) (type 14) (param f64 f64) (result f64)
    (local f64 f64 f64)
    local.get 0
    local.get 0
    f64.ne
    if  ;; label = @1
      local.get 0
      return
    end
    local.get 1
    local.get 1
    f64.ne
    if  ;; label = @1
      local.get 1
      return
    end
    local.get 0
    f64.abs
    local.tee 2
    global.get 41
    f64.eq
    local.get 1
    f64.abs
    local.tee 3
    global.get 25
    f64.eq
    i32.or
    if  ;; label = @1
      global.get 27
      return
    end
    local.get 3
    global.get 41
    f64.eq
    local.get 2
    local.get 3
    f64.lt
    i32.or
    if  ;; label = @1
      local.get 0
      return
    end
    local.get 2
    f64.const 0x1p+53 (;=9.0072e+15;)
    f64.lt
    local.get 2
    f64.trunc
    local.get 2
    f64.eq
    local.get 3
    f64.trunc
    local.get 3
    f64.eq
    i32.and
    i32.and
    if  ;; label = @1
      local.get 2
      local.get 2
      local.get 3
      f64.div
      f64.trunc
      local.get 3
      f64.mul
      f64.sub
      local.get 0
      f64.copysign
      return
    end
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        global.get 36
        f64.mul
        local.tee 4
        local.get 2
        f64.gt
        br_if 1 (;@1;)
        local.get 4
        local.set 3
        br 0 (;@2;)
      end
    end
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        local.get 1
        f64.abs
        f64.lt
        br_if 1 (;@1;)
        local.get 2
        local.get 3
        f64.ge
        if  ;; label = @3
          local.get 2
          local.get 3
          f64.sub
          local.set 2
        end
        local.get 3
        f64.const 0x1p-1 (;=0.5;)
        f64.mul
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 2
    local.get 0
    f64.copysign)
  (func (;19;) (type 5) (param f64) (result f64)
    i32.const 0
    local.get 0
    i64.reinterpret_f64
    global.get 6
    local.get 0
    i64.reinterpret_f64
    i32.wrap_i64
    i32.const 8
    i32.sub
    i32.load
    i32.const 0
    return_call 16)
  (func (;20;) (type 15) (param i64 i32 i32 i64 i64 i64 i64 i64 i64) (result i64)
    local.get 0
    f64.reinterpret_i64
    local.get 1
    local.get 4
    f64.reinterpret_i64
    local.get 5
    f64.reinterpret_i64
    local.get 6
    f64.reinterpret_i64
    local.get 7
    f64.reinterpret_i64
    local.get 8
    f64.reinterpret_i64
    local.get 0
    i64.const 32
    i64.shr_u
    i64.const 32767
    i64.and
    i32.wrap_i64
    call_indirect (type 0)
    i64.reinterpret_f64)
  (func (;21;) (type 0) (param f64 i32 f64 f64 f64 f64 f64) (result f64)
    local.get 2
    call 19)
  (func (;22;) (type 0) (param f64 i32 f64 f64 f64 f64 f64) (result f64)
    (local i32 i32 f64)
    block (result f64)  ;; label = @1
      global.get 6
      local.set 0
      global.get 2
      local.set 1
      local.get 2
      i64.reinterpret_f64
      i32.wrap_i64
      i32.const 8
      i32.sub
      i32.load
      local.set 7
      global.get 2
      local.set 8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 8
          global.set 2
          local.get 0
          local.get 7
          f64.convert_i32_s
          f64.lt
          i32.eqz
          br_if 1 (;@2;)
          global.get 27
          i32.const 1
          local.get 2
          i64.reinterpret_f64
          local.get 0
          call 12
          local.tee 9
          local.get 9
          i64.reinterpret_f64
          global.get 24
          i64.eq
          select
          global.get 6
          f64.le
          if  ;; label = @4
            local.get 1
            global.set 2
            global.get 7
            br 3 (;@1;)
          end
          local.get 0
          global.get 27
          local.get 9
          local.get 9
          i64.reinterpret_f64
          global.get 24
          i64.eq
          select
          f64.add
          local.set 0
          br 0 (;@3;)
        end
      end
      local.get 1
      global.set 2
      global.get 7
    end)
  (func (;23;) (type 0) (param f64 i32 f64 f64 f64 f64 f64) (result f64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 f64 f64 f64 f64 f64 f64)
    block (result f64)  ;; label = @1
      i32.const 0
      local.set 1
      global.get 6
      local.set 0
      global.get 6
      local.set 3
      global.get 6
      local.set 4
      global.get 6
      local.set 5
      global.get 2
      local.set 16
      i32.const 16
      i32.const 0
      global.get 19
      memory.fill
      i32.const 16
      local.set 7
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.const 16
          i32.ge_s
          br_if 1 (;@2;)
          i32.const 16
          local.get 1
          i32.add
          local.get 1
          local.tee 10
          i32.const 116
          i32.load
          i32.ge_u
          if (result i32)  ;; label = @4
            i32.const 0
          else
            i32.const 120
            local.get 10
            i32.const 1
            i32.shl
            i32.add
            i32.load16_u
          end
          i32.store8
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          br 0 (;@3;)
        end
      end
      f64.const 0x1p+4 (;=16;)
      local.set 6
      global.get 7
      local.set 21
      global.get 13
      local.get 2
      f64.add
      local.tee 20
      global.get 6
      f64.eq
      if  ;; label = @2
        local.get 7
        local.get 6
        i64.trunc_sat_f64_s
        i32.wrap_i64
        local.tee 1
        i32.add
        i32.const 48
        i32.store8
        local.get 6
        global.get 8
        f64.add
        local.set 21
      else
        local.get 20
        local.set 22
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i64.trunc_sat_f64_s
              f64.convert_i64_s
              i64.reinterpret_f64
              local.get 0
              i64.reinterpret_f64
              i64.ne
              local.get 0
              f64.abs
              global.get 42
              f64.gt
              i32.or
              br_if 0 (;@5;)
              local.get 0
              i64.trunc_sat_f64_s
              local.set 19
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 19
                  global.get 43
                  i64.add
                  global.get 44
                  i64.gt_u
                  if  ;; label = @8
                    local.get 19
                    f64.convert_i64_s
                    local.set 0
                    br 3 (;@5;)
                  end
                  local.get 22
                  global.get 6
                  f64.gt
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 19
                  i64.const 1
                  i64.add
                  local.set 19
                  local.get 22
                  block (result f64)  ;; label = @8
                    local.get 22
                    local.set 24
                    local.get 22
                    f64.abs
                    global.get 21
                    f64.lt
                    if (result f64)  ;; label = @9
                      local.get 24
                      local.get 24
                      global.get 9
                      f64.div
                      f64.trunc
                      global.get 9
                      f64.mul
                      f64.sub
                      local.get 24
                      f64.copysign
                    else
                      local.get 24
                      call 5
                    end
                  end
                  f64.sub
                  global.get 9
                  f64.div
                  local.set 22
                  br 0 (;@7;)
                end
                local.get 19
                f64.convert_i64_s
                local.set 0
                br 2 (;@4;)
              end
              local.get 19
              f64.convert_i64_s
              local.set 0
              br 2 (;@3;)
            end
            loop  ;; label = @5
              local.get 22
              global.get 6
              f64.gt
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              global.get 8
              f64.add
              local.set 0
              local.get 22
              block (result f64)  ;; label = @6
                local.get 22
                local.set 24
                local.get 22
                f64.abs
                global.get 21
                f64.lt
                if (result f64)  ;; label = @7
                  local.get 24
                  local.get 24
                  global.get 9
                  f64.div
                  f64.trunc
                  global.get 9
                  f64.mul
                  f64.sub
                  local.get 24
                  f64.copysign
                else
                  local.get 24
                  call 5
                end
              end
              f64.sub
              global.get 9
              f64.div
              local.set 22
              br 0 (;@5;)
            end
          end
        end
        local.get 0
        global.get 8
        f64.sub
        local.set 22
        block  ;; label = @3
          loop  ;; label = @4
            local.get 22
            global.get 6
            f64.ge
            i32.eqz
            br_if 1 (;@3;)
            local.get 6
            local.get 22
            f64.add
            local.tee 24
            i64.trunc_sat_f64_s
            i32.wrap_i64
            local.tee 1
            f64.convert_i32_s
            local.get 24
            f64.eq
            local.set 10
            local.get 1
            i32.const -1
            local.get 10
            select
            local.set 1
            global.get 45
            block (result f64)  ;; label = @5
              local.get 20
              local.set 24
              local.get 20
              f64.abs
              global.get 21
              f64.lt
              if (result f64)  ;; label = @6
                local.get 24
                local.get 24
                global.get 9
                f64.div
                f64.trunc
                global.get 9
                f64.mul
                f64.sub
                local.get 24
                f64.copysign
              else
                local.get 24
                call 5
              end
            end
            f64.add
            local.set 24
            local.get 1
            global.get 19
            i32.lt_u
            if  ;; label = @5
              local.get 7
              local.get 1
              i32.add
              local.get 24
              f64.abs
              global.get 46
              f64.lt
              if (result i32)  ;; label = @6
                local.get 24
                i64.trunc_sat_f64_s
                i32.wrap_i64
              else
                local.get 24
                call 14
              end
              i32.store8
            end
            local.get 20
            block (result f64)  ;; label = @5
              local.get 20
              local.set 24
              local.get 20
              f64.abs
              global.get 21
              f64.lt
              if (result f64)  ;; label = @6
                local.get 24
                local.get 24
                global.get 9
                f64.div
                f64.trunc
                global.get 9
                f64.mul
                f64.sub
                local.get 24
                f64.copysign
              else
                local.get 24
                call 5
              end
            end
            f64.sub
            global.get 9
            f64.div
            local.set 20
            local.get 22
            global.get 8
            f64.sub
            local.set 22
            br 0 (;@4;)
          end
        end
        local.get 6
        local.get 0
        f64.add
        local.set 21
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 21
          local.tee 6
          i64.trunc_sat_f64_s
          f64.convert_i64_s
          i64.reinterpret_f64
          local.get 6
          i64.reinterpret_f64
          i64.ne
          local.get 6
          f64.abs
          global.get 35
          f64.gt
          i32.or
          br_if 0 (;@3;)
          local.get 8
          local.set 1
          local.get 6
          i64.trunc_sat_f64_s
          local.set 19
          block  ;; label = @4
            loop  ;; label = @5
              local.get 1
              i32.const 29
              i32.ge_s
              br_if 1 (;@4;)
              local.get 1
              i64.extend_i32_s
              local.get 19
              i64.add
              local.tee 17
              i32.wrap_i64
              local.tee 12
              i64.extend_i32_s
              local.get 17
              i64.eq
              local.set 13
              local.get 12
              i32.const -1
              local.get 13
              select
              local.set 11
              local.get 1
              local.tee 14
              i32.const 156
              i32.load
              i32.ge_u
              if (result i32)  ;; label = @6
                i32.const 0
              else
                i32.const 160
                local.get 14
                i32.const 1
                i32.shl
                i32.add
                i32.load16_u
              end
              local.set 15
              local.get 11
              global.get 19
              i32.lt_u
              if  ;; label = @6
                local.get 7
                local.get 11
                i32.add
                local.get 15
                i32.store8
              end
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              br 0 (;@5;)
            end
          end
          br 1 (;@2;)
        end
        block  ;; label = @3
          loop  ;; label = @4
            local.get 8
            i32.const 29
            i32.ge_s
            br_if 1 (;@3;)
            local.get 6
            local.get 8
            f64.convert_i32_s
            f64.add
            local.tee 0
            i64.trunc_sat_f64_s
            i32.wrap_i64
            local.tee 12
            f64.convert_i32_s
            local.get 0
            f64.eq
            local.set 13
            local.get 12
            i32.const -1
            local.get 13
            select
            local.set 11
            local.get 8
            local.tee 14
            i32.const 156
            i32.load
            i32.ge_u
            if (result i32)  ;; label = @5
              i32.const 0
            else
              i32.const 160
              local.get 14
              i32.const 1
              i32.shl
              i32.add
              i32.load16_u
            end
            local.set 15
            local.get 11
            global.get 19
            i32.lt_u
            if  ;; label = @5
              local.get 7
              local.get 11
              i32.add
              local.get 15
              i32.store8
            end
            local.get 8
            i32.const 1
            i32.add
            local.set 8
            br 0 (;@4;)
          end
        end
      end
      local.get 6
      f64.const 0x1.dp+4 (;=29;)
      f64.add
      local.set 6
      global.get 7
      local.set 0
      local.get 2
      global.get 6
      f64.eq
      if  ;; label = @2
        local.get 6
        i64.trunc_sat_f64_s
        i32.wrap_i64
        local.tee 1
        f64.convert_i32_s
        local.get 6
        f64.eq
        local.set 8
        local.get 1
        i32.const -1
        local.get 8
        select
        local.tee 1
        global.get 19
        i32.lt_u
        if  ;; label = @3
          local.get 7
          local.get 1
          i32.add
          i32.const 48
          i32.store8
        end
        local.get 6
        global.get 8
        f64.add
        local.set 0
      else
        local.get 2
        local.set 21
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i64.trunc_sat_f64_s
              f64.convert_i64_s
              i64.reinterpret_f64
              local.get 3
              i64.reinterpret_f64
              i64.ne
              local.get 3
              f64.abs
              global.get 42
              f64.gt
              i32.or
              br_if 0 (;@5;)
              local.get 3
              i64.trunc_sat_f64_s
              local.set 18
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 18
                  global.get 43
                  i64.add
                  global.get 44
                  i64.gt_u
                  if  ;; label = @8
                    local.get 18
                    f64.convert_i64_s
                    local.set 3
                    br 3 (;@5;)
                  end
                  local.get 21
                  global.get 6
                  f64.gt
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 18
                  i64.const 1
                  i64.add
                  local.set 18
                  local.get 21
                  block (result f64)  ;; label = @8
                    local.get 21
                    local.set 25
                    local.get 21
                    f64.abs
                    global.get 21
                    f64.lt
                    if (result f64)  ;; label = @9
                      local.get 25
                      local.get 25
                      global.get 9
                      f64.div
                      f64.trunc
                      global.get 9
                      f64.mul
                      f64.sub
                      local.get 25
                      f64.copysign
                    else
                      local.get 25
                      call 5
                    end
                  end
                  f64.sub
                  global.get 9
                  f64.div
                  local.set 21
                  br 0 (;@7;)
                end
                local.get 18
                f64.convert_i64_s
                local.set 3
                br 2 (;@4;)
              end
              local.get 18
              f64.convert_i64_s
              local.set 3
              br 2 (;@3;)
            end
            loop  ;; label = @5
              local.get 21
              global.get 6
              f64.gt
              i32.eqz
              br_if 2 (;@3;)
              local.get 3
              global.get 8
              f64.add
              local.set 3
              local.get 21
              block (result f64)  ;; label = @6
                local.get 21
                local.set 25
                local.get 21
                f64.abs
                global.get 21
                f64.lt
                if (result f64)  ;; label = @7
                  local.get 25
                  local.get 25
                  global.get 9
                  f64.div
                  f64.trunc
                  global.get 9
                  f64.mul
                  f64.sub
                  local.get 25
                  f64.copysign
                else
                  local.get 25
                  call 5
                end
              end
              f64.sub
              global.get 9
              f64.div
              local.set 21
              br 0 (;@5;)
            end
          end
        end
        local.get 3
        global.get 8
        f64.sub
        local.set 21
        block  ;; label = @3
          loop  ;; label = @4
            local.get 21
            global.get 6
            f64.ge
            i32.eqz
            br_if 1 (;@3;)
            local.get 6
            local.get 21
            f64.add
            local.tee 20
            i64.trunc_sat_f64_s
            i32.wrap_i64
            local.tee 1
            f64.convert_i32_s
            local.get 20
            f64.eq
            local.set 8
            local.get 1
            i32.const -1
            local.get 8
            select
            local.set 1
            global.get 45
            block (result f64)  ;; label = @5
              local.get 2
              local.set 20
              local.get 2
              f64.abs
              global.get 21
              f64.lt
              if (result f64)  ;; label = @6
                local.get 20
                local.get 20
                global.get 9
                f64.div
                f64.trunc
                global.get 9
                f64.mul
                f64.sub
                local.get 20
                f64.copysign
              else
                local.get 20
                call 5
              end
            end
            f64.add
            local.set 20
            local.get 1
            global.get 19
            i32.lt_u
            if  ;; label = @5
              local.get 7
              local.get 1
              i32.add
              local.get 20
              f64.abs
              global.get 46
              f64.lt
              if (result i32)  ;; label = @6
                local.get 20
                i64.trunc_sat_f64_s
                i32.wrap_i64
              else
                local.get 20
                call 14
              end
              i32.store8
            end
            local.get 2
            block (result f64)  ;; label = @5
              local.get 2
              local.set 20
              local.get 2
              f64.abs
              global.get 21
              f64.lt
              if (result f64)  ;; label = @6
                local.get 20
                local.get 20
                global.get 9
                f64.div
                f64.trunc
                global.get 9
                f64.mul
                f64.sub
                local.get 20
                f64.copysign
              else
                local.get 20
                call 5
              end
            end
            f64.sub
            global.get 9
            f64.div
            local.set 2
            local.get 21
            global.get 8
            f64.sub
            local.set 21
            br 0 (;@4;)
          end
        end
        local.get 6
        local.get 3
        f64.add
        local.set 0
      end
      local.get 0
      local.set 6
      local.get 0
      i64.trunc_sat_f64_s
      i32.wrap_i64
      local.tee 1
      f64.convert_i32_s
      local.get 0
      f64.eq
      local.set 8
      local.get 1
      i32.const -1
      local.get 8
      select
      local.tee 1
      global.get 19
      i32.lt_u
      if  ;; label = @2
        local.get 7
        local.get 1
        i32.add
        i32.const 10
        i32.store8
      end
      local.get 6
      global.get 8
      f64.add
      local.tee 6
      i32.trunc_sat_f64_s
      local.tee 1
      global.get 14
      i32.ge_u
      if  ;; label = @2
        unreachable
      end
      local.get 1
      local.get 1
      call 3
      local.set 1
      local.get 6
      global.get 22
      f64.le
      if  ;; label = @2
        local.get 6
        f64.ceil
        i64.trunc_sat_f64_s
        i32.wrap_i64
        local.tee 8
        i64.extend_i32_s
        i64.const -1
        i64.add
        local.tee 19
        local.get 1
        i32.const 8
        i32.sub
        local.tee 11
        i32.load
        i64.extend_i32_u
        i64.lt_s
        local.get 19
        local.get 7
        i32.const 8
        i32.sub
        i32.load
        i64.extend_i32_u
        i64.lt_s
        i32.and
        if  ;; label = @3
          local.get 1
          local.get 9
          i32.add
          local.tee 10
          local.get 7
          local.get 9
          i32.add
          local.tee 12
          i32.le_u
          local.get 10
          local.get 12
          local.get 8
          local.get 9
          i32.sub
          local.tee 13
          i32.add
          i32.ge_u
          i32.or
          if  ;; label = @4
            local.get 10
            local.get 12
            local.get 13
            memory.copy
            local.get 8
            local.set 9
            local.get 7
            local.get 8
            i32.const 1
            i32.sub
            i32.add
            i32.load8_u
            drop
          else
            block  ;; label = @5
              loop  ;; label = @6
                local.get 9
                local.get 8
                i32.ge_s
                br_if 1 (;@5;)
                local.get 1
                local.get 9
                i32.add
                local.get 7
                local.get 9
                i32.add
                i32.load8_u
                i32.store8
                local.get 9
                i32.const 1
                i32.add
                local.set 9
                br 0 (;@6;)
              end
            end
          end
        else
          block  ;; label = @4
            local.get 11
            i32.load
            local.set 10
            loop  ;; label = @5
              local.get 9
              local.get 8
              i32.ge_s
              br_if 1 (;@4;)
              local.get 9
              local.set 12
              local.get 9
              global.get 19
              i32.lt_u
              if (result i32)  ;; label = @6
                local.get 7
                local.get 9
                i32.add
                i32.load8_u
              else
                i32.const 0
              end
              local.set 13
              local.get 9
              local.get 10
              i32.lt_u
              if  ;; label = @6
                local.get 1
                local.get 12
                i32.add
                local.get 13
                i32.store8
              end
              local.get 9
              i32.const 1
              i32.add
              local.set 9
              br 0 (;@5;)
            end
          end
        end
      else
        block  ;; label = @3
          local.get 1
          i32.const 8
          i32.sub
          i32.load
          local.set 8
          loop  ;; label = @4
            local.get 4
            local.get 6
            f64.lt
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.trunc_sat_f64_s
            local.set 9
            local.get 4
            i32.trunc_sat_f64_s
            local.tee 10
            global.get 19
            i32.lt_u
            if (result i32)  ;; label = @5
              local.get 7
              local.get 10
              i32.add
              i32.load8_u
            else
              i32.const 0
            end
            local.set 10
            local.get 9
            local.get 8
            i32.lt_u
            if  ;; label = @5
              local.get 1
              local.get 9
              i32.add
              local.get 10
              i32.store8
            end
            local.get 4
            global.get 8
            f64.add
            local.set 4
            br 0 (;@4;)
          end
        end
      end
      local.get 1
      i32.const 8
      i32.sub
      i32.load
      local.set 8
      global.get 2
      local.set 9
      block  ;; label = @2
        loop  ;; label = @3
          local.get 9
          global.set 2
          local.get 5
          local.get 8
          f64.convert_i32_s
          f64.lt
          i32.eqz
          br_if 1 (;@2;)
          global.get 27
          i32.const 2
          global.get 17
          local.get 1
          i64.extend_i32_u
          i64.or
          local.get 5
          call 12
          local.tee 23
          local.get 23
          i64.reinterpret_f64
          global.get 24
          i64.eq
          select
          global.get 6
          f64.le
          if  ;; label = @4
            local.get 16
            global.set 2
            global.get 7
            br 3 (;@1;)
          end
          local.get 5
          global.get 27
          local.get 23
          local.get 23
          i64.reinterpret_f64
          global.get 24
          i64.eq
          select
          f64.add
          local.set 5
          br 0 (;@3;)
        end
      end
      local.get 16
      global.set 2
      global.get 7
    end)
  (func (;24;) (type 4) (param i32) (result i32)
    local.get 0
    call 6)
  (func (;25;) (type 16)
    i32.const 1024
    global.set 2
    i32.const 0
    global.set 4
    i32.const 0
    global.set 3
    i32.const 0
    global.set 0
    i64.const 0
    global.set 1)
  (func (;26;) (type 16)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    global.get 2
    local.set 0
    f64.const nan:0xd000000000000 (;=nan;)
    local.set 95
    f64.const nan:0xd000100000000 (;=nan;)
    local.set 96
    f64.const nan:0xd000200000000 (;=nan;)
    local.set 97
    global.get 2
    local.set 2
    global.get 2
    local.set 72
    i32.const 1048576
    local.tee 1
    i32.const 2
    i32.sub
    local.set 3
    i32.const 4
    i32.const 4
    call 3
    local.set 4
    i32.const 1
    i32.const 1
    call 3
    local.set 5
    local.get 1
    local.set 22
    local.get 1
    global.get 14
    i32.ge_u
    if  ;; label = @1
      unreachable
    end
    i64.const 1048573
    local.get 22
    local.get 22
    call 3
    local.tee 22
    i32.const 8
    i32.sub
    i32.load
    i64.extend_i32_u
    local.tee 94
    i64.lt_s
    local.tee 73
    local.get 73
    i32.and
    local.get 73
    i32.and
    local.get 73
    i32.and
    i64.const 1048574
    local.get 94
    i64.lt_s
    local.tee 74
    i32.and
    i64.const 2097148
    local.get 94
    i64.lt_s
    local.tee 75
    i32.and
    local.get 74
    i32.and
    local.get 75
    i32.and
    local.get 73
    i32.and
    local.get 73
    i32.and
    local.get 73
    i32.and
    local.get 73
    i32.and
    local.get 74
    i32.and
    local.get 75
    i32.and
    local.get 74
    i32.and
    local.get 75
    i32.and
    local.get 73
    i32.and
    local.get 73
    i32.and
    if  ;; label = @1
      global.get 4
      local.set 73
      global.get 2
      local.tee 74
      global.get 4
      i32.gt_u
      if  ;; label = @2
        local.get 74
        global.set 4
      end
      local.get 96
      local.set 124
      local.get 95
      local.set 125
      local.get 97
      local.set 126
      block  ;; label = @2
        local.get 22
        i32.const 8
        i32.sub
        i32.load
        local.tee 76
        i64.extend_i32_u
        local.set 94
        local.get 76
        local.set 75
        loop  ;; label = @3
          global.get 2
          local.get 74
          i32.sub
          global.get 20
          i32.gt_u
          if  ;; label = @4
            local.get 74
            call 4
            local.set 74
          end
          local.get 125
          local.get 4
          global.get 6
          global.get 13
          call 2
          local.tee 110
          local.get 110
          f64.eq
          local.get 110
          global.get 6
          f64.ne
          i32.and
          local.get 110
          i64.reinterpret_f64
          global.get 12
          i64.eq
          i32.or
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          i32.load8_u
          i64.extend_i32_u
          local.get 4
          i32.load8_u offset=1
          i32.const 8
          i32.shl
          i64.extend_i32_s
          i64.add
          local.get 4
          i32.load8_u offset=2
          i32.const 16
          i32.shl
          i64.extend_i32_s
          i64.add
          local.get 4
          i32.load8_u offset=3
          i64.extend_i32_u
          i64.const 24
          i64.shl
          i64.add
          local.tee 90
          i64.eqz
          br_if 1 (;@2;)
          local.get 126
          i32.const 1
          local.get 90
          f64.convert_i64_s
          global.get 7
          global.get 7
          global.get 7
          global.get 7
          local.get 126
          i64.reinterpret_f64
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          global.get 16
          i32.and
          call_indirect (type 0)
          drop
          local.get 90
          local.get 1
          i64.extend_i32_s
          i64.le_s
          if  ;; label = @4
            global.get 15
            i64.const 4
            local.get 90
            i64.add
            local.tee 92
            i32.wrap_i64
            local.get 92
            global.get 10
            i64.gt_s
            select
            local.tee 23
            global.get 14
            i32.ge_u
            if  ;; label = @5
              unreachable
            end
            local.get 23
            local.get 23
            call 3
            local.tee 24
            local.set 6
            local.get 90
            i32.wrap_i64
            global.get 11
            i32.and
            local.set 25
            i32.const 0
            local.get 24
            i32.const 8
            i32.sub
            i32.load
            i32.lt_u
            if  ;; label = @5
              local.get 6
              local.get 25
              i32.store8
            end
            i32.const 1
            local.set 26
            local.get 90
            i32.wrap_i64
            i32.const 8
            i32.shr_s
            global.get 11
            i32.and
            local.set 27
            i32.const 1
            local.get 6
            i32.const 8
            i32.sub
            local.tee 76
            i32.load
            i32.lt_u
            if  ;; label = @5
              local.get 6
              local.get 26
              i32.add
              local.get 27
              i32.store8
            end
            i32.const 2
            local.set 26
            local.get 90
            i32.wrap_i64
            i32.const 16
            i32.shr_s
            global.get 11
            i32.and
            local.set 27
            i32.const 2
            local.get 76
            i32.load
            i32.lt_u
            if  ;; label = @5
              local.get 6
              local.get 26
              i32.add
              local.get 27
              i32.store8
            end
            i32.const 3
            local.set 26
            local.get 90
            i32.wrap_i64
            i32.const 24
            i32.shr_s
            global.get 11
            i32.and
            local.set 27
            i32.const 3
            local.get 76
            i32.load
            i32.lt_u
            if  ;; label = @5
              local.get 6
              local.get 26
              i32.add
              local.get 27
              i32.store8
            end
            local.get 125
            local.get 6
            global.get 13
            local.get 90
            f64.convert_i64_s
            call 2
            local.tee 110
            local.get 110
            f64.eq
            local.get 110
            global.get 6
            f64.ne
            i32.and
            local.get 110
            i64.reinterpret_f64
            global.get 12
            i64.eq
            i32.or
            i32.eqz
            br_if 2 (;@2;)
            local.get 124
            i32.const 1
            global.get 17
            local.get 6
            i64.extend_i32_u
            i64.or
            f64.reinterpret_i64
            global.get 7
            global.get 7
            global.get 7
            global.get 7
            local.get 124
            i64.reinterpret_f64
            i64.const 32
            i64.shr_u
            i32.wrap_i64
            global.get 16
            i32.and
            call_indirect (type 0)
            drop
            br 1 (;@3;)
          end
          local.get 125
          local.get 5
          global.get 6
          global.get 8
          call 2
          local.tee 110
          local.get 110
          f64.eq
          local.get 110
          global.get 6
          f64.ne
          i32.and
          local.get 110
          i64.reinterpret_f64
          global.get 12
          i64.eq
          i32.or
          i32.eqz
          br_if 1 (;@2;)
          local.get 5
          i32.load8_u
          i32.const 34
          i32.eq
          if  ;; label = @4
            local.get 125
            local.get 124
            local.get 22
            local.get 90
            f64.convert_i64_s
            global.get 18
            f64.sub
            local.get 3
            call 8
            local.tee 110
            local.get 110
            f64.eq
            local.get 110
            global.get 6
            f64.ne
            i32.and
            local.get 110
            i64.reinterpret_f64
            global.get 12
            i64.eq
            i32.or
            i32.eqz
            br_if 2 (;@2;)
            local.get 125
            local.get 5
            global.get 6
            global.get 8
            call 2
            local.tee 110
            local.get 110
            f64.eq
            local.get 110
            global.get 6
            f64.ne
            i32.and
            local.get 110
            i64.reinterpret_f64
            global.get 12
            i64.eq
            i32.or
            i32.eqz
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          local.get 90
          f64.convert_i64_s
          global.get 18
          f64.sub
          local.set 111
          global.get 6
          local.set 112
          global.get 6
          local.set 113
          global.get 4
          local.set 26
          global.get 2
          local.tee 28
          global.get 4
          i32.gt_u
          if  ;; label = @4
            local.get 28
            global.set 4
          end
          block  ;; label = @4
            local.get 1
            f64.convert_i32_s
            local.set 114
            local.get 3
            f64.convert_i32_s
            local.set 115
            local.get 94
            local.set 88
            local.get 75
            local.set 45
            loop  ;; label = @5
              global.get 2
              local.get 28
              i32.sub
              global.get 20
              i32.gt_u
              if  ;; label = @6
                local.get 28
                call 4
                local.set 28
              end
              local.get 111
              global.get 6
              f64.gt
              i32.eqz
              br_if 1 (;@4;)
              local.get 111
              local.get 114
              local.get 112
              f64.sub
              local.tee 110
              f64.ge
              if  ;; label = @6
                local.get 125
                local.get 22
                local.get 112
                local.get 110
                call 2
                local.tee 116
                local.get 116
                f64.eq
                local.get 116
                global.get 6
                f64.ne
                i32.and
                local.get 116
                i64.reinterpret_f64
                global.get 12
                i64.eq
                i32.or
                i32.eqz
                if  ;; label = @7
                  global.get 8
                  local.set 113
                  br 3 (;@4;)
                end
                local.get 114
                local.set 112
                local.get 111
                local.get 110
                f64.sub
                local.set 111
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    local.tee 7
                    local.get 7
                    local.tee 8
                    i32.eq
                    local.tee 27
                    if (result i32)  ;; label = @9
                      local.get 7
                      i32.eqz
                      i32.eqz
                      local.tee 29
                      if (result i32)  ;; label = @10
                        local.get 29
                      else
                        global.get 8
                        local.get 7
                        f64.convert_i32_s
                        f64.div
                        global.get 6
                        f64.gt
                      end
                    else
                      local.get 27
                    end
                    i32.eqz
                    local.get 8
                    i32.const 0
                    i32.lt_s
                    i32.or
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      loop  ;; label = @10
                        local.get 8
                        i32.const 0
                        i32.le_s
                        br_if 1 (;@9;)
                        local.get 22
                        local.get 8
                        i32.const 1
                        i32.sub
                        local.tee 77
                        i32.add
                        i32.load8_u
                        i32.const 44
                        i32.eq
                        br_if 1 (;@9;)
                        local.get 77
                        local.set 8
                        br 0 (;@10;)
                      end
                    end
                    local.get 8
                    local.set 7
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 7
                      i32.const 0
                      i32.le_s
                      br_if 1 (;@8;)
                      local.get 22
                      local.get 7
                      i32.const 1
                      i32.sub
                      local.tee 78
                      i32.add
                      i32.load8_u
                      i32.const 44
                      i32.eq
                      br_if 1 (;@8;)
                      local.get 78
                      local.set 7
                      br 0 (;@9;)
                    end
                  end
                end
                local.get 7
                i32.eqz
                if (result f64)  ;; label = @7
                  local.get 115
                  local.set 110
                  local.get 115
                else
                  local.get 7
                  i32.const 1
                  i32.sub
                  f64.convert_i32_s
                  local.set 110
                  local.get 7
                  f64.convert_i32_s
                end
                local.set 117
                i32.const 4
                local.get 110
                global.get 18
                f64.add
                i64.trunc_sat_f64_s
                i32.wrap_i64
                local.tee 9
                i32.add
                local.tee 27
                global.get 14
                i32.ge_u
                if  ;; label = @7
                  unreachable
                end
                local.get 27
                local.get 27
                call 3
                local.tee 27
                local.set 10
                local.get 9
                global.get 11
                i32.and
                local.set 29
                i32.const 0
                local.get 27
                i32.const 8
                i32.sub
                i32.load
                i32.lt_u
                if  ;; label = @7
                  local.get 10
                  local.get 29
                  i32.store8
                end
                i32.const 1
                local.set 27
                local.get 9
                i32.const 8
                i32.shr_s
                global.get 11
                i32.and
                local.set 29
                i32.const 1
                local.get 10
                i32.const 8
                i32.sub
                local.tee 76
                i32.load
                i32.lt_u
                if  ;; label = @7
                  local.get 10
                  local.get 27
                  i32.add
                  local.get 29
                  i32.store8
                end
                i32.const 2
                local.set 27
                local.get 9
                i32.const 16
                i32.shr_s
                global.get 11
                i32.and
                local.set 29
                i32.const 2
                local.get 76
                i32.load
                i32.lt_u
                if  ;; label = @7
                  local.get 10
                  local.get 27
                  i32.add
                  local.get 29
                  i32.store8
                end
                i32.const 3
                local.set 27
                local.get 9
                i32.const 24
                i32.shr_s
                global.get 11
                i32.and
                local.set 29
                i32.const 3
                local.get 76
                i32.load
                i32.lt_u
                if  ;; label = @7
                  local.get 10
                  local.get 27
                  i32.add
                  local.get 29
                  i32.store8
                end
                i32.const 4
                local.set 27
                i32.const 4
                local.get 76
                i32.load
                i32.lt_u
                if  ;; label = @7
                  local.get 10
                  local.get 27
                  i32.add
                  i32.const 91
                  i32.store8
                end
                i32.const 0
                local.set 12
                local.get 110
                i64.trunc_sat_f64_s
                i32.wrap_i64
                local.tee 11
                i64.extend_i32_s
                i64.const 4
                i64.add
                local.get 76
                i32.load
                i64.extend_i32_u
                i64.lt_s
                if  ;; label = @7
                  local.get 22
                  local.get 12
                  i32.add
                  local.set 65
                  local.get 10
                  local.get 12
                  i32.add
                  local.set 66
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 12
                      local.get 11
                      i32.ge_s
                      br_if 1 (;@8;)
                      local.get 66
                      local.get 65
                      i32.load8_u
                      i32.store8 offset=5
                      local.get 12
                      i32.const 1
                      i32.add
                      local.set 12
                      local.get 65
                      i32.const 1
                      i32.add
                      local.set 65
                      local.get 66
                      i32.const 1
                      i32.add
                      local.set 66
                      br 0 (;@9;)
                    end
                  end
                else
                  block  ;; label = @8
                    local.get 76
                    i32.load
                    local.set 33
                    loop  ;; label = @9
                      local.get 12
                      local.get 11
                      i32.ge_s
                      br_if 1 (;@8;)
                      local.get 22
                      local.get 12
                      i32.add
                      i32.load8_u
                      local.set 27
                      i32.const 5
                      local.get 12
                      i32.add
                      local.tee 29
                      local.get 33
                      i32.lt_u
                      if  ;; label = @10
                        local.get 10
                        local.get 29
                        i32.add
                        local.get 27
                        i32.store8
                      end
                      local.get 12
                      i32.const 1
                      i32.add
                      local.set 12
                      br 0 (;@9;)
                    end
                  end
                end
                global.get 15
                global.get 13
                local.get 110
                f64.add
                global.get 8
                f64.add
                i64.trunc_sat_f64_s
                local.tee 92
                i32.wrap_i64
                local.get 92
                global.get 10
                i64.gt_s
                select
                local.tee 27
                local.get 76
                i32.load
                i32.lt_u
                if  ;; label = @7
                  local.get 10
                  local.get 27
                  i32.add
                  i32.const 93
                  i32.store8
                end
                local.get 124
                i32.const 1
                global.get 17
                local.get 10
                i64.extend_i32_u
                i64.or
                f64.reinterpret_i64
                global.get 7
                global.get 7
                global.get 7
                global.get 7
                local.get 124
                i64.reinterpret_f64
                i64.const 32
                i64.shr_u
                i32.wrap_i64
                global.get 16
                i32.and
                call_indirect (type 0)
                drop
                i32.const 0
                local.set 13
                local.get 112
                i64.trunc_sat_f64_s
                local.get 117
                i64.trunc_sat_f64_s
                i64.sub
                local.tee 92
                global.get 23
                i64.ge_s
                local.get 92
                global.get 10
                i64.le_s
                i32.and
                if  ;; label = @7
                  local.get 92
                  i32.wrap_i64
                  local.set 14
                  local.get 22
                  i32.const 0
                  local.tee 15
                  i32.add
                  local.set 67
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 15
                      local.get 14
                      i32.ge_s
                      br_if 1 (;@8;)
                      local.get 67
                      local.get 22
                      local.get 117
                      i64.trunc_sat_f64_s
                      i32.wrap_i64
                      local.get 15
                      i32.add
                      i32.add
                      i32.load8_u
                      i32.store8
                      local.get 15
                      i32.const 1
                      i32.add
                      local.set 15
                      local.get 67
                      i32.const 1
                      i32.add
                      local.set 67
                      br 0 (;@9;)
                    end
                  end
                else
                  local.get 92
                  local.set 85
                  block  ;; label = @8
                    loop  ;; label = @9
                      local.get 13
                      i64.extend_i32_s
                      local.get 85
                      i64.ge_s
                      br_if 1 (;@8;)
                      local.get 22
                      local.get 13
                      i32.add
                      local.get 22
                      local.get 117
                      i64.trunc_sat_f64_s
                      i32.wrap_i64
                      local.get 13
                      i32.add
                      i32.add
                      i32.load8_u
                      i32.store8
                      local.get 13
                      i32.const 1
                      i32.add
                      local.set 13
                      br 0 (;@9;)
                    end
                  end
                end
                local.get 92
                f64.convert_i64_s
                local.set 112
              else
                global.get 15
                local.get 111
                i64.trunc_sat_f64_s
                local.tee 92
                i32.wrap_i64
                local.get 92
                global.get 10
                i64.gt_s
                select
                local.tee 27
                global.get 14
                i32.ge_u
                if  ;; label = @7
                  unreachable
                end
                local.get 27
                local.get 27
                call 3
                local.tee 27
                local.set 16
                local.get 125
                local.get 27
                global.get 6
                local.get 111
                call 2
                local.tee 110
                local.get 110
                f64.eq
                local.get 110
                global.get 6
                f64.ne
                i32.and
                local.get 110
                i64.reinterpret_f64
                global.get 12
                i64.eq
                i32.or
                i32.eqz
                if  ;; label = @7
                  global.get 8
                  local.set 113
                  br 3 (;@4;)
                end
                local.get 111
                global.get 22
                f64.le
                if  ;; label = @7
                  i32.const 0
                  local.set 18
                  local.get 112
                  i64.trunc_sat_f64_s
                  local.tee 92
                  local.set 84
                  i32.const 1
                  local.get 92
                  local.tee 93
                  i64.const 0
                  local.get 93
                  i64.sub
                  local.get 93
                  i64.const 0
                  i64.ge_s
                  select
                  i64.const 2147483648
                  i64.le_s
                  i32.and
                  local.get 111
                  f64.ceil
                  i64.trunc_sat_f64_s
                  i32.wrap_i64
                  local.tee 17
                  i64.extend_i32_s
                  i64.const -1
                  i64.add
                  local.tee 93
                  local.get 92
                  i64.add
                  local.get 88
                  i64.lt_s
                  i32.and
                  local.get 92
                  i64.const 0
                  i64.ge_s
                  i32.and
                  local.get 93
                  local.get 16
                  i32.const 8
                  i32.sub
                  local.tee 76
                  i32.load
                  i64.extend_i32_u
                  i64.lt_s
                  i32.and
                  local.get 92
                  global.get 10
                  i64.le_s
                  i32.and
                  local.get 92
                  f64.convert_i64_s
                  i64.reinterpret_f64
                  global.get 26
                  i64.ne
                  i32.and
                  if  ;; label = @8
                    local.get 84
                    i32.wrap_i64
                    local.set 30
                    local.get 18
                    local.get 17
                    local.get 18
                    i32.sub
                    i32.const -16
                    i32.and
                    i32.add
                    local.set 64
                    block  ;; label = @9
                      loop  ;; label = @10
                        local.get 18
                        local.get 64
                        i32.ge_s
                        br_if 1 (;@9;)
                        local.get 22
                        local.get 30
                        local.get 18
                        i32.add
                        i32.add
                        local.get 16
                        local.get 18
                        i32.add
                        v128.load
                        v128.store
                        local.get 18
                        i32.const 16
                        i32.add
                        local.set 18
                        br 0 (;@10;)
                      end
                    end
                    block  ;; label = @9
                      loop  ;; label = @10
                        local.get 18
                        local.get 17
                        i32.ge_s
                        br_if 1 (;@9;)
                        local.get 22
                        local.get 30
                        local.get 18
                        i32.add
                        i32.add
                        local.get 16
                        local.get 18
                        i32.add
                        i32.load8_u
                        i32.store8
                        local.get 18
                        i32.const 1
                        i32.add
                        local.set 18
                        br 0 (;@10;)
                      end
                    end
                  else
                    block  ;; label = @9
                      local.get 76
                      i32.load
                      local.set 34
                      local.get 45
                      local.set 35
                      loop  ;; label = @10
                        local.get 18
                        local.get 17
                        i32.ge_s
                        br_if 1 (;@9;)
                        global.get 15
                        global.get 28
                        local.get 112
                        i64.trunc_sat_f64_s
                        local.get 18
                        i64.extend_i32_s
                        i64.add
                        local.tee 92
                        i32.wrap_i64
                        local.get 92
                        global.get 23
                        i64.lt_s
                        select
                        local.get 92
                        global.get 10
                        i64.gt_s
                        select
                        local.set 27
                        local.get 18
                        local.get 34
                        i32.lt_u
                        if (result i32)  ;; label = @11
                          local.get 16
                          local.get 18
                          i32.add
                          i32.load8_u
                        else
                          i32.const 0
                        end
                        local.set 29
                        local.get 27
                        local.get 35
                        i32.lt_u
                        if  ;; label = @11
                          local.get 22
                          local.get 27
                          i32.add
                          local.get 29
                          i32.store8
                        end
                        local.get 18
                        i32.const 1
                        i32.add
                        local.set 18
                        br 0 (;@10;)
                      end
                    end
                  end
                else
                  i64.const 0
                  local.set 91
                  block  ;; label = @8
                    local.get 16
                    i32.const 8
                    i32.sub
                    i32.load
                    local.set 36
                    local.get 45
                    local.set 37
                    loop  ;; label = @9
                      local.get 91
                      local.get 111
                      i64.trunc_sat_f64_s
                      i64.ge_s
                      br_if 1 (;@8;)
                      global.get 15
                      global.get 28
                      local.get 112
                      i64.trunc_sat_f64_s
                      local.get 91
                      i64.add
                      local.tee 92
                      i32.wrap_i64
                      local.get 92
                      global.get 23
                      i64.lt_s
                      select
                      local.get 92
                      global.get 10
                      i64.gt_s
                      select
                      local.set 27
                      global.get 15
                      local.get 91
                      local.tee 92
                      i32.wrap_i64
                      local.get 92
                      global.get 10
                      i64.gt_s
                      select
                      local.tee 29
                      local.get 36
                      i32.lt_u
                      if (result i32)  ;; label = @10
                        local.get 16
                        local.get 29
                        i32.add
                        i32.load8_u
                      else
                        i32.const 0
                      end
                      local.set 29
                      local.get 27
                      local.get 37
                      i32.lt_u
                      if  ;; label = @10
                        local.get 22
                        local.get 27
                        i32.add
                        local.get 29
                        i32.store8
                      end
                      local.get 91
                      i64.const 1
                      i64.add
                      local.set 91
                      br 0 (;@9;)
                    end
                  end
                end
                local.get 112
                local.get 111
                f64.add
                local.set 112
                global.get 6
                local.set 111
                global.get 6
                local.set 118
                block  ;; label = @7
                  local.get 115
                  local.set 119
                  local.get 45
                  local.set 44
                  local.get 88
                  local.set 87
                  global.get 2
                  local.set 70
                  loop  ;; label = @8
                    local.get 70
                    global.set 2
                    local.get 118
                    local.get 112
                    f64.lt
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 118
                    local.get 119
                    f64.add
                    local.tee 110
                    local.get 112
                    f64.ge
                    if  ;; label = @9
                      local.get 112
                      local.set 110
                    else
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 110
                          local.tee 120
                          local.get 120
                          i64.trunc_sat_f64_s
                          i32.wrap_i64
                          i32.const 0
                          local.get 120
                          global.get 33
                          f64.ne
                          select
                          f64.convert_i32_s
                          local.tee 121
                          f64.eq
                          local.tee 27
                          if (result i32)  ;; label = @12
                            local.get 120
                            global.get 6
                            f64.ne
                            local.tee 29
                            if (result i32)  ;; label = @13
                              local.get 29
                            else
                              global.get 8
                              local.get 120
                              f64.div
                              global.get 6
                              f64.gt
                            end
                          else
                            local.get 27
                          end
                          i32.eqz
                          local.get 121
                          global.get 6
                          f64.ge
                          i32.eqz
                          i32.or
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 44
                            local.set 38
                            loop  ;; label = @13
                              local.get 121
                              local.get 118
                              f64.gt
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 121
                              global.get 8
                              f64.sub
                              i32.trunc_sat_f64_s
                              local.tee 27
                              local.get 38
                              i32.lt_u
                              if (result i32)  ;; label = @14
                                local.get 22
                                local.get 27
                                i32.add
                                i32.load8_u
                                i32.const 44
                                i32.ne
                              else
                                i32.const 1
                              end
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 121
                              global.get 8
                              f64.sub
                              local.set 121
                              br 0 (;@13;)
                            end
                          end
                          local.get 121
                          local.set 120
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 44
                          local.set 39
                          loop  ;; label = @12
                            local.get 120
                            local.get 118
                            f64.gt
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 120
                            global.get 8
                            f64.sub
                            i32.trunc_sat_f64_s
                            local.tee 27
                            local.get 39
                            i32.lt_u
                            if (result i32)  ;; label = @13
                              local.get 22
                              local.get 27
                              i32.add
                              i32.load8_u
                              i32.const 44
                              i32.ne
                            else
                              i32.const 1
                            end
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 120
                            global.get 8
                            f64.sub
                            local.set 120
                            br 0 (;@12;)
                          end
                        end
                      end
                      local.get 120
                      local.get 118
                      f64.gt
                      if  ;; label = @10
                        local.get 120
                        global.get 8
                        f64.sub
                        local.set 110
                      end
                    end
                    global.get 13
                    local.get 110
                    local.get 118
                    f64.sub
                    local.tee 122
                    global.get 18
                    f64.add
                    local.tee 116
                    f64.add
                    i32.trunc_sat_f64_s
                    local.tee 27
                    global.get 14
                    i32.ge_u
                    if  ;; label = @9
                      unreachable
                    end
                    local.get 27
                    local.get 27
                    call 3
                    local.tee 27
                    local.set 19
                    local.get 116
                    i64.trunc_sat_f64_s
                    i32.wrap_i64
                    i32.const 0
                    local.get 116
                    global.get 33
                    f64.ne
                    select
                    local.tee 29
                    global.get 11
                    i32.and
                    local.set 76
                    i32.const 0
                    local.get 27
                    i32.const 8
                    i32.sub
                    i32.load
                    i32.lt_u
                    if  ;; label = @9
                      local.get 19
                      local.get 76
                      i32.store8
                    end
                    i32.const 1
                    local.set 27
                    local.get 29
                    i32.const 8
                    i32.shr_s
                    global.get 11
                    i32.and
                    local.set 76
                    i32.const 1
                    local.get 19
                    i32.const 8
                    i32.sub
                    local.tee 79
                    i32.load
                    i32.lt_u
                    if  ;; label = @9
                      local.get 19
                      local.get 27
                      i32.add
                      local.get 76
                      i32.store8
                    end
                    i32.const 2
                    local.set 27
                    local.get 29
                    i32.const 16
                    i32.shr_s
                    global.get 11
                    i32.and
                    local.set 76
                    i32.const 2
                    local.get 79
                    i32.load
                    i32.lt_u
                    if  ;; label = @9
                      local.get 19
                      local.get 27
                      i32.add
                      local.get 76
                      i32.store8
                    end
                    i32.const 3
                    local.set 27
                    local.get 29
                    i32.const 24
                    i32.shr_s
                    global.get 11
                    i32.and
                    local.set 29
                    i32.const 3
                    local.get 79
                    i32.load
                    i32.lt_u
                    if  ;; label = @9
                      local.get 19
                      local.get 27
                      i32.add
                      local.get 29
                      i32.store8
                    end
                    i32.const 4
                    local.set 27
                    i32.const 4
                    local.get 79
                    i32.load
                    i32.lt_u
                    if  ;; label = @9
                      local.get 19
                      local.get 27
                      i32.add
                      i32.const 91
                      i32.store8
                    end
                    local.get 122
                    global.get 29
                    f64.ge
                    local.get 122
                    global.get 22
                    f64.le
                    i32.and
                    if  ;; label = @9
                      i32.const 0
                      local.set 21
                      local.get 118
                      i64.trunc_sat_f64_s
                      local.set 84
                      local.get 122
                      f64.ceil
                      i64.trunc_sat_f64_s
                      i32.wrap_i64
                      local.tee 20
                      i64.extend_i32_s
                      i64.const -1
                      i64.add
                      local.tee 93
                      i64.const 5
                      i64.add
                      local.get 79
                      i32.load
                      i64.extend_i32_u
                      i64.lt_s
                      i32.const 1
                      i32.and
                      local.get 118
                      f64.abs
                      global.get 30
                      f64.le
                      i32.and
                      local.get 93
                      local.get 84
                      i64.add
                      local.get 87
                      i64.lt_s
                      i32.and
                      local.get 84
                      i64.const 0
                      i64.ge_s
                      i32.and
                      local.get 84
                      global.get 10
                      i64.le_s
                      i32.and
                      local.get 118
                      i64.reinterpret_f64
                      global.get 26
                      i64.ne
                      i32.and
                      if  ;; label = @10
                        local.get 21
                        local.get 84
                        i32.wrap_i64
                        i32.add
                        local.set 68
                        local.get 19
                        local.get 21
                        i32.add
                        local.set 69
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 21
                            local.get 20
                            i32.ge_s
                            br_if 1 (;@11;)
                            local.get 69
                            local.get 22
                            local.get 68
                            i32.add
                            i32.load8_u
                            i32.store8 offset=5
                            local.get 21
                            i32.const 1
                            i32.add
                            local.set 21
                            local.get 68
                            i32.const 1
                            i32.add
                            local.set 68
                            local.get 69
                            i32.const 1
                            i32.add
                            local.set 69
                            br 0 (;@12;)
                          end
                        end
                      else
                        block  ;; label = @11
                          local.get 44
                          local.set 40
                          local.get 79
                          i32.load
                          local.set 41
                          loop  ;; label = @12
                            local.get 21
                            local.get 20
                            i32.ge_s
                            br_if 1 (;@11;)
                            i32.const 5
                            local.get 21
                            i32.add
                            local.set 27
                            local.get 118
                            local.get 21
                            f64.convert_i32_s
                            f64.add
                            i32.trunc_sat_f64_s
                            local.tee 29
                            local.get 40
                            i32.lt_u
                            if (result i32)  ;; label = @13
                              local.get 22
                              local.get 29
                              i32.add
                              i32.load8_u
                            else
                              i32.const 0
                            end
                            local.set 29
                            local.get 27
                            local.get 41
                            i32.lt_u
                            if  ;; label = @13
                              local.get 19
                              local.get 27
                              i32.add
                              local.get 29
                              i32.store8
                            end
                            local.get 21
                            i32.const 1
                            i32.add
                            local.set 21
                            br 0 (;@12;)
                          end
                        end
                      end
                    else
                      global.get 6
                      local.set 123
                      block  ;; label = @10
                        local.get 44
                        local.set 42
                        local.get 79
                        i32.load
                        local.set 43
                        loop  ;; label = @11
                          local.get 123
                          local.get 122
                          f64.lt
                          i32.eqz
                          br_if 1 (;@10;)
                          global.get 47
                          local.get 123
                          f64.add
                          i32.trunc_sat_f64_s
                          local.set 27
                          local.get 118
                          local.get 123
                          f64.add
                          i32.trunc_sat_f64_s
                          local.tee 29
                          local.get 42
                          i32.lt_u
                          if (result i32)  ;; label = @12
                            local.get 22
                            local.get 29
                            i32.add
                            i32.load8_u
                          else
                            i32.const 0
                          end
                          local.set 29
                          local.get 27
                          local.get 43
                          i32.lt_u
                          if  ;; label = @12
                            local.get 19
                            local.get 27
                            i32.add
                            local.get 29
                            i32.store8
                          end
                          local.get 123
                          global.get 8
                          f64.add
                          local.set 123
                          br 0 (;@11;)
                        end
                      end
                    end
                    global.get 13
                    local.get 122
                    f64.add
                    global.get 8
                    f64.add
                    i32.trunc_sat_f64_s
                    local.tee 27
                    local.get 79
                    i32.load
                    i32.lt_u
                    if  ;; label = @9
                      local.get 19
                      local.get 27
                      i32.add
                      i32.const 93
                      i32.store8
                    end
                    local.get 124
                    i32.const 1
                    global.get 17
                    local.get 19
                    i64.extend_i32_u
                    i64.or
                    f64.reinterpret_i64
                    global.get 7
                    global.get 7
                    global.get 7
                    global.get 7
                    local.get 124
                    i64.reinterpret_f64
                    i64.const 32
                    i64.shr_u
                    i32.wrap_i64
                    global.get 16
                    i32.and
                    call_indirect (type 0)
                    drop
                    block  ;; label = @9
                      local.get 110
                      local.tee 118
                      local.get 112
                      f64.lt
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 118
                      i32.trunc_sat_f64_s
                      local.tee 27
                      local.get 44
                      i32.lt_u
                      if (result i32)  ;; label = @10
                        local.get 22
                        local.get 27
                        i32.add
                        i32.load8_u
                        i32.const 44
                        i32.eq
                      else
                        i32.const 0
                      end
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 118
                      global.get 8
                      f64.add
                      local.set 118
                    end
                    br 0 (;@8;)
                  end
                end
                global.get 6
                local.set 112
              end
              br 0 (;@5;)
            end
          end
          local.get 26
          global.set 4
          local.get 113
          global.get 6
          f64.ne
          br_if 1 (;@2;)
          local.get 125
          local.get 5
          global.get 6
          global.get 8
          call 2
          local.tee 110
          local.get 110
          f64.eq
          local.get 110
          global.get 6
          f64.ne
          i32.and
          local.get 110
          i64.reinterpret_f64
          global.get 12
          i64.eq
          i32.or
          i32.eqz
          br_if 1 (;@2;)
          br 0 (;@3;)
        end
      end
      local.get 73
      global.set 4
    else
      global.get 4
      local.set 73
      global.get 2
      local.tee 74
      global.get 4
      i32.gt_u
      if  ;; label = @2
        local.get 74
        global.set 4
      end
      block  ;; label = @2
        local.get 22
        i32.const 8
        i32.sub
        i32.load
        local.tee 76
        local.set 75
        local.get 76
        i64.extend_i32_u
        local.set 94
        loop  ;; label = @3
          global.get 2
          local.get 74
          i32.sub
          global.get 20
          i32.gt_u
          if  ;; label = @4
            local.get 74
            call 4
            local.set 74
          end
          local.get 95
          local.get 4
          global.get 6
          global.get 13
          call 2
          local.tee 120
          local.get 120
          f64.eq
          local.get 120
          global.get 6
          f64.ne
          i32.and
          local.get 120
          i64.reinterpret_f64
          global.get 12
          i64.eq
          i32.or
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          i32.load8_u
          i64.extend_i32_u
          local.get 4
          i32.load8_u offset=1
          i32.const 8
          i32.shl
          i64.extend_i32_s
          i64.add
          local.get 4
          i32.load8_u offset=2
          i32.const 16
          i32.shl
          i64.extend_i32_s
          i64.add
          local.get 4
          i32.load8_u offset=3
          i64.extend_i32_u
          i64.const 24
          i64.shl
          i64.add
          local.tee 82
          i64.eqz
          br_if 1 (;@2;)
          local.get 97
          i32.const 1
          local.get 82
          f64.convert_i64_s
          global.get 7
          global.get 7
          global.get 7
          global.get 7
          local.get 97
          i64.reinterpret_f64
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          global.get 16
          i32.and
          call_indirect (type 0)
          drop
          local.get 82
          local.get 1
          i64.extend_i32_s
          i64.le_s
          if  ;; label = @4
            global.get 15
            i64.const 4
            local.get 82
            i64.add
            local.tee 90
            i32.wrap_i64
            local.get 90
            global.get 10
            i64.gt_s
            select
            local.tee 23
            global.get 14
            i32.ge_u
            if  ;; label = @5
              unreachable
            end
            local.get 23
            local.get 23
            call 3
            local.tee 23
            local.set 6
            i32.const 0
            local.get 23
            i32.const 8
            i32.sub
            i32.load
            i32.lt_u
            if  ;; label = @5
              local.get 6
              local.get 82
              i64.store8
            end
            i32.const 1
            local.get 6
            i32.const 8
            i32.sub
            local.tee 76
            i32.load
            i32.lt_u
            if  ;; label = @5
              local.get 6
              i32.const 1
              i32.add
              local.get 82
              i32.wrap_i64
              i32.const 8
              i32.shr_s
              i32.store8
            end
            i32.const 2
            local.get 76
            i32.load
            i32.lt_u
            if  ;; label = @5
              local.get 6
              i32.const 2
              i32.add
              local.get 82
              i32.wrap_i64
              i32.const 16
              i32.shr_s
              i32.store8
            end
            i32.const 3
            local.get 76
            i32.load
            i32.lt_u
            if  ;; label = @5
              local.get 6
              i32.const 3
              i32.add
              local.get 82
              i32.wrap_i64
              i32.const 24
              i32.shr_s
              i32.store8
            end
            local.get 95
            local.get 6
            global.get 13
            local.get 82
            f64.convert_i64_s
            call 2
            local.tee 120
            local.get 120
            f64.eq
            local.get 120
            global.get 6
            f64.ne
            i32.and
            local.get 120
            i64.reinterpret_f64
            global.get 12
            i64.eq
            i32.or
            i32.eqz
            br_if 2 (;@2;)
            local.get 96
            i32.const 1
            global.get 17
            local.get 6
            i64.extend_i32_u
            i64.or
            f64.reinterpret_i64
            global.get 7
            global.get 7
            global.get 7
            global.get 7
            local.get 96
            i64.reinterpret_f64
            i64.const 32
            i64.shr_u
            i32.wrap_i64
            global.get 16
            i32.and
            call_indirect (type 0)
            drop
            br 1 (;@3;)
          end
          local.get 95
          local.get 5
          global.get 6
          global.get 8
          call 2
          local.tee 120
          local.get 120
          f64.eq
          local.get 120
          global.get 6
          f64.ne
          i32.and
          local.get 120
          i64.reinterpret_f64
          global.get 12
          i64.eq
          i32.or
          i32.eqz
          br_if 1 (;@2;)
          local.get 5
          i32.load8_u
          i32.const 34
          i32.eq
          if  ;; label = @4
            local.get 95
            local.get 96
            local.get 22
            local.get 82
            f64.convert_i64_s
            global.get 18
            f64.sub
            local.get 3
            call 8
            local.tee 120
            local.get 120
            f64.eq
            local.get 120
            global.get 6
            f64.ne
            i32.and
            local.get 120
            i64.reinterpret_f64
            global.get 12
            i64.eq
            i32.or
            i32.eqz
            br_if 2 (;@2;)
            local.get 95
            local.get 5
            global.get 6
            global.get 8
            call 2
            local.tee 120
            local.get 120
            f64.eq
            local.get 120
            global.get 6
            f64.ne
            i32.and
            local.get 120
            i64.reinterpret_f64
            global.get 12
            i64.eq
            i32.or
            i32.eqz
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          local.get 82
          f64.convert_i64_s
          global.get 18
          f64.sub
          local.set 98
          global.get 6
          local.set 99
          global.get 6
          local.set 100
          global.get 4
          local.set 23
          global.get 2
          local.tee 31
          global.get 4
          i32.gt_u
          if  ;; label = @4
            local.get 31
            global.set 4
          end
          block  ;; label = @4
            local.get 1
            f64.convert_i32_s
            local.set 108
            local.get 75
            local.set 63
            local.get 3
            f64.convert_i32_s
            local.set 109
            local.get 94
            local.set 89
            loop  ;; label = @5
              global.get 2
              local.get 31
              i32.sub
              global.get 20
              i32.gt_u
              if  ;; label = @6
                local.get 31
                call 4
                local.set 31
              end
              local.get 98
              global.get 6
              f64.gt
              i32.eqz
              br_if 1 (;@4;)
              local.get 98
              local.get 108
              local.get 99
              f64.sub
              local.tee 124
              f64.ge
              if  ;; label = @6
                local.get 95
                local.get 22
                local.get 99
                local.get 124
                call 2
                local.tee 120
                local.get 120
                f64.eq
                local.get 120
                global.get 6
                f64.ne
                i32.and
                local.get 120
                i64.reinterpret_f64
                global.get 12
                i64.eq
                i32.or
                i32.eqz
                if  ;; label = @7
                  global.get 8
                  local.set 100
                  br 3 (;@4;)
                end
                local.get 108
                local.set 99
                local.get 98
                local.get 124
                f64.sub
                local.set 98
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    local.tee 7
                    local.get 7
                    local.tee 8
                    i32.ne
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 7
                      br_if 0 (;@9;)
                      global.get 8
                      local.get 7
                      f64.convert_i32_s
                      f64.div
                      global.get 6
                      f64.gt
                      i32.eqz
                      br_if 1 (;@8;)
                    end
                    local.get 8
                    i32.const 0
                    i32.lt_s
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 63
                      local.set 46
                      loop  ;; label = @10
                        local.get 8
                        i32.const 0
                        i32.le_s
                        br_if 1 (;@9;)
                        local.get 8
                        i32.const 1
                        i32.sub
                        local.tee 80
                        local.tee 24
                        local.get 46
                        i32.lt_u
                        if (result i32)  ;; label = @11
                          local.get 22
                          local.get 24
                          i32.add
                          i32.load8_u
                          i32.const 44
                          i32.ne
                        else
                          i32.const 1
                        end
                        i32.eqz
                        br_if 1 (;@9;)
                        local.get 80
                        local.set 8
                        br 0 (;@10;)
                      end
                    end
                    local.get 8
                    local.set 7
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 63
                    local.set 47
                    loop  ;; label = @9
                      local.get 7
                      i32.const 0
                      i32.le_s
                      br_if 1 (;@8;)
                      local.get 7
                      i32.const 1
                      i32.sub
                      local.tee 81
                      local.tee 24
                      local.get 47
                      i32.lt_u
                      if (result i32)  ;; label = @10
                        local.get 22
                        local.get 24
                        i32.add
                        i32.load8_u
                        i32.const 44
                        i32.ne
                      else
                        i32.const 1
                      end
                      i32.eqz
                      br_if 1 (;@8;)
                      local.get 81
                      local.set 7
                      br 0 (;@9;)
                    end
                  end
                end
                local.get 7
                i32.eqz
                if (result f64)  ;; label = @7
                  local.get 109
                  local.set 124
                  local.get 109
                else
                  local.get 7
                  i32.const 1
                  i32.sub
                  f64.convert_i32_s
                  local.set 124
                  local.get 7
                  f64.convert_i32_s
                end
                local.set 101
                i32.const 4
                local.get 124
                global.get 18
                f64.add
                i64.trunc_sat_f64_s
                i32.wrap_i64
                local.tee 9
                i32.add
                local.tee 24
                global.get 14
                i32.ge_u
                if  ;; label = @7
                  unreachable
                end
                local.get 24
                local.get 24
                call 3
                local.tee 24
                local.set 10
                i32.const 0
                local.get 24
                i32.const 8
                i32.sub
                i32.load
                i32.lt_u
                if  ;; label = @7
                  local.get 10
                  local.get 9
                  i32.store8
                end
                i32.const 1
                local.get 10
                i32.const 8
                i32.sub
                local.tee 76
                i32.load
                i32.lt_u
                if  ;; label = @7
                  local.get 10
                  i32.const 1
                  i32.add
                  local.get 9
                  i32.const 8
                  i32.shr_s
                  i32.store8
                end
                i32.const 2
                local.get 76
                i32.load
                i32.lt_u
                if  ;; label = @7
                  local.get 10
                  i32.const 2
                  i32.add
                  local.get 9
                  i32.const 16
                  i32.shr_s
                  i32.store8
                end
                i32.const 3
                local.get 76
                i32.load
                i32.lt_u
                if  ;; label = @7
                  local.get 10
                  i32.const 3
                  i32.add
                  local.get 9
                  i32.const 24
                  i32.shr_s
                  i32.store8
                end
                i32.const 4
                local.get 76
                i32.load
                i32.lt_u
                if  ;; label = @7
                  local.get 10
                  i32.const 4
                  i32.add
                  i32.const 91
                  i32.store8
                end
                local.get 124
                i64.trunc_sat_f64_s
                i32.wrap_i64
                local.set 11
                i32.const 0
                local.set 12
                block  ;; label = @7
                  local.get 63
                  local.set 48
                  local.get 76
                  i32.load
                  local.set 49
                  loop  ;; label = @8
                    local.get 12
                    local.get 11
                    i32.ge_s
                    br_if 1 (;@7;)
                    i32.const 5
                    local.get 12
                    i32.add
                    local.set 24
                    local.get 12
                    local.get 48
                    i32.lt_u
                    if (result i32)  ;; label = @9
                      local.get 22
                      local.get 12
                      i32.add
                      i32.load8_u
                    else
                      i32.const 0
                    end
                    local.set 25
                    local.get 24
                    local.get 49
                    i32.lt_u
                    if  ;; label = @9
                      local.get 10
                      local.get 24
                      i32.add
                      local.get 25
                      i32.store8
                    end
                    local.get 12
                    i32.const 1
                    i32.add
                    local.set 12
                    br 0 (;@8;)
                  end
                end
                global.get 15
                global.get 13
                local.get 124
                f64.add
                global.get 8
                f64.add
                i64.trunc_sat_f64_s
                local.tee 90
                i32.wrap_i64
                local.get 90
                global.get 10
                i64.gt_s
                select
                local.tee 24
                local.get 76
                i32.load
                i32.lt_u
                if  ;; label = @7
                  local.get 10
                  local.get 24
                  i32.add
                  i32.const 93
                  i32.store8
                end
                local.get 96
                i32.const 1
                global.get 17
                local.get 10
                i64.extend_i32_u
                i64.or
                f64.reinterpret_i64
                global.get 7
                global.get 7
                global.get 7
                global.get 7
                local.get 96
                i64.reinterpret_f64
                i64.const 32
                i64.shr_u
                i32.wrap_i64
                global.get 16
                i32.and
                call_indirect (type 0)
                drop
                i32.const 0
                local.set 13
                local.get 99
                i64.trunc_sat_f64_s
                local.get 101
                i64.trunc_sat_f64_s
                i64.sub
                local.tee 92
                global.get 23
                i64.ge_s
                local.get 92
                global.get 10
                i64.le_s
                i32.and
                if  ;; label = @7
                  i32.const 0
                  local.set 15
                  local.get 92
                  i32.wrap_i64
                  local.tee 14
                  i64.extend_i32_s
                  i64.const -1
                  i64.add
                  local.tee 88
                  local.get 89
                  i64.lt_s
                  i32.const 1
                  i32.and
                  local.get 88
                  local.get 101
                  i64.trunc_sat_f64_s
                  i32.wrap_i64
                  local.tee 24
                  i64.extend_i32_s
                  local.tee 90
                  i64.add
                  local.get 89
                  i64.lt_s
                  i32.and
                  local.get 90
                  i64.const 0
                  i64.ge_s
                  i32.and
                  local.get 90
                  global.get 10
                  i64.le_s
                  i32.and
                  local.get 24
                  f64.convert_i32_s
                  i64.reinterpret_f64
                  global.get 26
                  i64.ne
                  i32.and
                  if  ;; label = @8
                    local.get 90
                    i32.wrap_i64
                    local.set 32
                    block  ;; label = @9
                      loop  ;; label = @10
                        local.get 15
                        local.get 14
                        i32.ge_s
                        br_if 1 (;@9;)
                        local.get 22
                        local.get 15
                        i32.add
                        local.get 22
                        local.get 32
                        local.get 15
                        i32.add
                        i32.add
                        i32.load8_u
                        i32.store8
                        local.get 15
                        i32.const 1
                        i32.add
                        local.set 15
                        br 0 (;@10;)
                      end
                    end
                  else
                    block  ;; label = @9
                      local.get 63
                      local.set 50
                      loop  ;; label = @10
                        local.get 15
                        local.get 14
                        i32.ge_s
                        br_if 1 (;@9;)
                        local.get 15
                        local.set 24
                        global.get 15
                        local.get 101
                        i64.trunc_sat_f64_s
                        local.get 15
                        i64.extend_i32_s
                        i64.add
                        local.tee 90
                        i32.wrap_i64
                        local.get 90
                        global.get 10
                        i64.gt_s
                        select
                        local.tee 25
                        local.get 50
                        i32.lt_u
                        if (result i32)  ;; label = @11
                          local.get 22
                          local.get 25
                          i32.add
                          i32.load8_u
                        else
                          i32.const 0
                        end
                        local.set 25
                        local.get 15
                        local.get 50
                        i32.lt_u
                        if  ;; label = @11
                          local.get 22
                          local.get 24
                          i32.add
                          local.get 25
                          i32.store8
                        end
                        local.get 15
                        i32.const 1
                        i32.add
                        local.set 15
                        br 0 (;@10;)
                      end
                    end
                  end
                else
                  local.get 92
                  local.set 86
                  block  ;; label = @8
                    local.get 63
                    local.set 51
                    loop  ;; label = @9
                      local.get 13
                      i64.extend_i32_s
                      local.get 86
                      i64.ge_s
                      br_if 1 (;@8;)
                      local.get 13
                      local.set 24
                      global.get 15
                      global.get 28
                      local.get 101
                      i64.trunc_sat_f64_s
                      local.get 13
                      i64.extend_i32_s
                      i64.add
                      local.tee 90
                      i32.wrap_i64
                      local.get 90
                      global.get 23
                      i64.lt_s
                      select
                      local.get 90
                      global.get 10
                      i64.gt_s
                      select
                      local.tee 25
                      local.get 51
                      i32.lt_u
                      if (result i32)  ;; label = @10
                        local.get 22
                        local.get 25
                        i32.add
                        i32.load8_u
                      else
                        i32.const 0
                      end
                      local.set 25
                      local.get 13
                      local.get 51
                      i32.lt_u
                      if  ;; label = @10
                        local.get 22
                        local.get 24
                        i32.add
                        local.get 25
                        i32.store8
                      end
                      local.get 13
                      i32.const 1
                      i32.add
                      local.set 13
                      br 0 (;@9;)
                    end
                  end
                end
                local.get 92
                f64.convert_i64_s
                local.set 99
              else
                global.get 15
                local.get 98
                i64.trunc_sat_f64_s
                local.tee 90
                i32.wrap_i64
                local.get 90
                global.get 10
                i64.gt_s
                select
                local.tee 24
                global.get 14
                i32.ge_u
                if  ;; label = @7
                  unreachable
                end
                local.get 24
                local.get 24
                call 3
                local.tee 24
                local.set 16
                local.get 95
                local.get 24
                global.get 6
                local.get 98
                call 2
                local.tee 120
                local.get 120
                f64.eq
                local.get 120
                global.get 6
                f64.ne
                i32.and
                local.get 120
                i64.reinterpret_f64
                global.get 12
                i64.eq
                i32.or
                i32.eqz
                if  ;; label = @7
                  global.get 8
                  local.set 100
                  br 3 (;@4;)
                end
                local.get 98
                global.get 22
                f64.le
                if  ;; label = @7
                  local.get 98
                  f64.ceil
                  i64.trunc_sat_f64_s
                  i32.wrap_i64
                  local.set 17
                  i32.const 0
                  local.set 18
                  block  ;; label = @8
                    local.get 16
                    i32.const 8
                    i32.sub
                    i32.load
                    local.set 52
                    local.get 63
                    local.set 53
                    loop  ;; label = @9
                      local.get 18
                      local.get 17
                      i32.ge_s
                      br_if 1 (;@8;)
                      global.get 15
                      global.get 28
                      local.get 99
                      i64.trunc_sat_f64_s
                      local.get 18
                      i64.extend_i32_s
                      i64.add
                      local.tee 90
                      i32.wrap_i64
                      local.get 90
                      global.get 23
                      i64.lt_s
                      select
                      local.get 90
                      global.get 10
                      i64.gt_s
                      select
                      local.set 24
                      local.get 18
                      local.get 52
                      i32.lt_u
                      if (result i32)  ;; label = @10
                        local.get 16
                        local.get 18
                        i32.add
                        i32.load8_u
                      else
                        i32.const 0
                      end
                      local.set 25
                      local.get 24
                      local.get 53
                      i32.lt_u
                      if  ;; label = @10
                        local.get 22
                        local.get 24
                        i32.add
                        local.get 25
                        i32.store8
                      end
                      local.get 18
                      i32.const 1
                      i32.add
                      local.set 18
                      br 0 (;@9;)
                    end
                  end
                else
                  i64.const 0
                  local.set 83
                  block  ;; label = @8
                    local.get 16
                    i32.const 8
                    i32.sub
                    i32.load
                    local.set 54
                    local.get 63
                    local.set 55
                    loop  ;; label = @9
                      local.get 83
                      local.get 98
                      i64.trunc_sat_f64_s
                      i64.ge_s
                      br_if 1 (;@8;)
                      global.get 15
                      global.get 28
                      local.get 99
                      i64.trunc_sat_f64_s
                      local.get 83
                      i64.add
                      local.tee 90
                      i32.wrap_i64
                      local.get 90
                      global.get 23
                      i64.lt_s
                      select
                      local.get 90
                      global.get 10
                      i64.gt_s
                      select
                      local.set 24
                      global.get 15
                      local.get 83
                      local.tee 90
                      i32.wrap_i64
                      local.get 90
                      global.get 10
                      i64.gt_s
                      select
                      local.tee 25
                      local.get 54
                      i32.lt_u
                      if (result i32)  ;; label = @10
                        local.get 16
                        local.get 25
                        i32.add
                        i32.load8_u
                      else
                        i32.const 0
                      end
                      local.set 25
                      local.get 24
                      local.get 55
                      i32.lt_u
                      if  ;; label = @10
                        local.get 22
                        local.get 24
                        i32.add
                        local.get 25
                        i32.store8
                      end
                      local.get 83
                      i64.const 1
                      i64.add
                      local.set 83
                      br 0 (;@9;)
                    end
                  end
                end
                local.get 99
                local.get 98
                f64.add
                local.set 99
                global.get 6
                local.set 98
                global.get 6
                local.set 102
                block  ;; label = @7
                  local.get 109
                  local.set 107
                  local.get 63
                  local.set 62
                  global.get 2
                  local.set 71
                  loop  ;; label = @8
                    local.get 71
                    global.set 2
                    local.get 102
                    local.get 99
                    f64.lt
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 102
                    local.get 107
                    f64.add
                    local.tee 124
                    local.get 99
                    f64.ge
                    if  ;; label = @9
                      local.get 99
                      local.set 124
                    else
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 124
                          local.tee 103
                          local.get 103
                          i64.trunc_sat_f64_s
                          i32.wrap_i64
                          i32.const 0
                          local.get 103
                          global.get 33
                          f64.ne
                          select
                          f64.convert_i32_s
                          local.tee 104
                          f64.eq
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 103
                            global.get 6
                            f64.ne
                            br_if 0 (;@12;)
                            global.get 8
                            local.get 103
                            f64.div
                            global.get 6
                            f64.gt
                            i32.eqz
                            br_if 1 (;@11;)
                          end
                          local.get 104
                          global.get 6
                          f64.ge
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 62
                            local.set 56
                            loop  ;; label = @13
                              local.get 104
                              local.get 102
                              f64.gt
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 104
                              global.get 8
                              f64.sub
                              i32.trunc_sat_f64_s
                              local.tee 24
                              local.get 56
                              i32.lt_u
                              if (result i32)  ;; label = @14
                                local.get 22
                                local.get 24
                                i32.add
                                i32.load8_u
                                i32.const 44
                                i32.ne
                              else
                                i32.const 1
                              end
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 104
                              global.get 8
                              f64.sub
                              local.set 104
                              br 0 (;@13;)
                            end
                          end
                          local.get 104
                          local.set 103
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 62
                          local.set 57
                          loop  ;; label = @12
                            local.get 103
                            local.get 102
                            f64.gt
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 103
                            global.get 8
                            f64.sub
                            i32.trunc_sat_f64_s
                            local.tee 24
                            local.get 57
                            i32.lt_u
                            if (result i32)  ;; label = @13
                              local.get 22
                              local.get 24
                              i32.add
                              i32.load8_u
                              i32.const 44
                              i32.ne
                            else
                              i32.const 1
                            end
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 103
                            global.get 8
                            f64.sub
                            local.set 103
                            br 0 (;@12;)
                          end
                        end
                      end
                      local.get 103
                      local.get 102
                      f64.gt
                      if  ;; label = @10
                        local.get 103
                        global.get 8
                        f64.sub
                        local.set 124
                      end
                    end
                    global.get 13
                    local.get 124
                    local.get 102
                    f64.sub
                    local.tee 105
                    global.get 18
                    f64.add
                    local.tee 125
                    f64.add
                    i32.trunc_sat_f64_s
                    local.tee 24
                    global.get 14
                    i32.ge_u
                    if  ;; label = @9
                      unreachable
                    end
                    local.get 24
                    local.get 24
                    call 3
                    local.tee 24
                    local.set 19
                    local.get 125
                    i64.trunc_sat_f64_s
                    i32.wrap_i64
                    i32.const 0
                    local.get 125
                    global.get 33
                    f64.ne
                    select
                    local.set 25
                    i32.const 0
                    local.get 24
                    i32.const 8
                    i32.sub
                    i32.load
                    i32.lt_u
                    if  ;; label = @9
                      local.get 19
                      local.get 25
                      i32.store8
                    end
                    i32.const 1
                    local.get 19
                    i32.const 8
                    i32.sub
                    local.tee 76
                    i32.load
                    i32.lt_u
                    if  ;; label = @9
                      local.get 19
                      i32.const 1
                      i32.add
                      local.get 25
                      i32.const 8
                      i32.shr_s
                      i32.store8
                    end
                    i32.const 2
                    local.get 76
                    i32.load
                    i32.lt_u
                    if  ;; label = @9
                      local.get 19
                      i32.const 2
                      i32.add
                      local.get 25
                      i32.const 16
                      i32.shr_s
                      i32.store8
                    end
                    i32.const 3
                    local.get 76
                    i32.load
                    i32.lt_u
                    if  ;; label = @9
                      local.get 19
                      i32.const 3
                      i32.add
                      local.get 25
                      i32.const 24
                      i32.shr_s
                      i32.store8
                    end
                    i32.const 4
                    local.get 76
                    i32.load
                    i32.lt_u
                    if  ;; label = @9
                      local.get 19
                      i32.const 4
                      i32.add
                      i32.const 91
                      i32.store8
                    end
                    local.get 105
                    global.get 29
                    f64.ge
                    local.get 105
                    global.get 22
                    f64.le
                    i32.and
                    if  ;; label = @9
                      local.get 105
                      f64.ceil
                      i64.trunc_sat_f64_s
                      i32.wrap_i64
                      local.set 20
                      i32.const 0
                      local.set 21
                      block  ;; label = @10
                        local.get 62
                        local.set 58
                        local.get 76
                        i32.load
                        local.set 59
                        loop  ;; label = @11
                          local.get 21
                          local.get 20
                          i32.ge_s
                          br_if 1 (;@10;)
                          i32.const 5
                          local.get 21
                          i32.add
                          local.set 24
                          local.get 102
                          local.get 21
                          f64.convert_i32_s
                          f64.add
                          i32.trunc_sat_f64_s
                          local.tee 25
                          local.get 58
                          i32.lt_u
                          if (result i32)  ;; label = @12
                            local.get 22
                            local.get 25
                            i32.add
                            i32.load8_u
                          else
                            i32.const 0
                          end
                          local.set 25
                          local.get 24
                          local.get 59
                          i32.lt_u
                          if  ;; label = @12
                            local.get 19
                            local.get 24
                            i32.add
                            local.get 25
                            i32.store8
                          end
                          local.get 21
                          i32.const 1
                          i32.add
                          local.set 21
                          br 0 (;@11;)
                        end
                      end
                    else
                      global.get 6
                      local.set 106
                      block  ;; label = @10
                        local.get 62
                        local.set 60
                        local.get 76
                        i32.load
                        local.set 61
                        loop  ;; label = @11
                          local.get 106
                          local.get 105
                          f64.lt
                          i32.eqz
                          br_if 1 (;@10;)
                          global.get 47
                          local.get 106
                          f64.add
                          i32.trunc_sat_f64_s
                          local.set 24
                          local.get 102
                          local.get 106
                          f64.add
                          i32.trunc_sat_f64_s
                          local.tee 25
                          local.get 60
                          i32.lt_u
                          if (result i32)  ;; label = @12
                            local.get 22
                            local.get 25
                            i32.add
                            i32.load8_u
                          else
                            i32.const 0
                          end
                          local.set 25
                          local.get 24
                          local.get 61
                          i32.lt_u
                          if  ;; label = @12
                            local.get 19
                            local.get 24
                            i32.add
                            local.get 25
                            i32.store8
                          end
                          local.get 106
                          global.get 8
                          f64.add
                          local.set 106
                          br 0 (;@11;)
                        end
                      end
                    end
                    global.get 13
                    local.get 105
                    f64.add
                    global.get 8
                    f64.add
                    i32.trunc_sat_f64_s
                    local.tee 24
                    local.get 76
                    i32.load
                    i32.lt_u
                    if  ;; label = @9
                      local.get 19
                      local.get 24
                      i32.add
                      i32.const 93
                      i32.store8
                    end
                    local.get 96
                    i32.const 1
                    global.get 17
                    local.get 19
                    i64.extend_i32_u
                    i64.or
                    f64.reinterpret_i64
                    global.get 7
                    global.get 7
                    global.get 7
                    global.get 7
                    local.get 96
                    i64.reinterpret_f64
                    i64.const 32
                    i64.shr_u
                    i32.wrap_i64
                    global.get 16
                    i32.and
                    call_indirect (type 0)
                    drop
                    block  ;; label = @9
                      local.get 124
                      local.tee 102
                      local.get 99
                      f64.lt
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 102
                      i32.trunc_sat_f64_s
                      local.tee 24
                      local.get 62
                      i32.lt_u
                      if (result i32)  ;; label = @10
                        local.get 22
                        local.get 24
                        i32.add
                        i32.load8_u
                        i32.const 44
                        i32.eq
                      else
                        i32.const 0
                      end
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 102
                      global.get 8
                      f64.add
                      local.set 102
                    end
                    br 0 (;@8;)
                  end
                end
                global.get 6
                local.set 99
              end
              br 0 (;@5;)
            end
          end
          local.get 23
          global.set 4
          local.get 100
          global.get 6
          f64.ne
          br_if 1 (;@2;)
          local.get 95
          local.get 5
          global.get 6
          global.get 8
          call 2
          local.tee 120
          local.get 120
          f64.eq
          local.get 120
          global.get 6
          f64.ne
          i32.and
          local.get 120
          i64.reinterpret_f64
          global.get 12
          i64.eq
          i32.or
          i32.eqz
          br_if 1 (;@2;)
          br 0 (;@3;)
        end
      end
      local.get 73
      global.set 4
    end
    local.get 72
    global.set 2
    local.get 2
    global.set 2
    local.get 0
    global.set 2)
  (table (;0;) 3 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 0))
  (global (;1;) (mut i64) (i64.const 0))
  (global (;2;) (mut i32) (i32.const 1024))
  (global (;3;) (mut i32) (i32.const 0))
  (global (;4;) (mut i32) (i32.const 0))
  (global (;5;) (mut i64) (i64.const 0))
  (global (;6;) f64 (f64.const 0x0p+0 (;=0;)))
  (global (;7;) f64 (f64.const nan:0x8000200000000 (;=nan;)))
  (global (;8;) f64 (f64.const 0x1p+0 (;=1;)))
  (global (;9;) f64 (f64.const 0x1.4p+3 (;=10;)))
  (global (;10;) i64 (i64.const 2147483647))
  (global (;11;) i32 (i32.const 255))
  (global (;12;) i64 (i64.const 9221120258515927040))
  (global (;13;) f64 (f64.const 0x1p+2 (;=4;)))
  (global (;14;) i32 (i32.const 2147483640))
  (global (;15;) i32 (i32.const 2147483647))
  (global (;16;) i32 (i32.const 32767))
  (global (;17;) i64 (i64.const 9221542453801123840))
  (global (;18;) f64 (f64.const 0x1p+1 (;=2;)))
  (global (;19;) i32 (i32.const 96))
  (global (;20;) i32 (i32.const 65536))
  (global (;21;) f64 (f64.const 0x1p+53 (;=9.0072e+15;)))
  (global (;22;) f64 (f64.const 0x1.fffffffcp+30 (;=2.14748e+09;)))
  (global (;23;) i64 (i64.const -2147483648))
  (global (;24;) i64 (i64.const 9221120245631025152))
  (global (;25;) f64 (f64.const 0x0p+0 (;=0;)))
  (global (;26;) i64 (i64.const -9223372036854775808))
  (global (;27;) f64 (f64.const nan (;=nan;)))
  (global (;28;) i32 (i32.const -2147483648))
  (global (;29;) f64 (f64.const -0x1p+31 (;=-2.14748e+09;)))
  (global (;30;) f64 (f64.const 0x1p+31 (;=2.14748e+09;)))
  (global (;31;) i64 (i64.const -2251799813685248))
  (global (;32;) i64 (i64.const 9221120237041090560))
  (global (;33;) f64 (f64.const inf (;=inf;)))
  (global (;34;) i64 (i64.const 9221120249925992665))
  (global (;35;) f64 (f64.const 0x1p+51 (;=2.2518e+15;)))
  (global (;36;) f64 (f64.const 0x1p+1 (;=2;)))
  (global (;37;) i64 (i64.const 9221120249925992663))
  (global (;38;) i64 (i64.const 9221120241336057856))
  (global (;39;) i64 (i64.const 2251795518717952))
  (global (;40;) i64 (i64.const 9221120249925992574))
  (global (;41;) f64 (f64.const inf (;=inf;)))
  (global (;42;) f64 (f64.const 0x1.fffffp+52 (;=9.00719e+15;)))
  (global (;43;) i64 (i64.const 9007194959773696))
  (global (;44;) i64 (i64.const 18014389919547392))
  (global (;45;) f64 (f64.const 0x1.8p+5 (;=48;)))
  (global (;46;) f64 (f64.const 0x1p+63 (;=9.22337e+18;)))
  (global (;47;) f64 (f64.const 0x1.4p+2 (;=5;)))
  (export "__jz_last_err_bits" (global 5))
  (export "memory" (memory 0))
  (export "__jz_table" (table 0))
  (export "__heap" (global 2))
  (export "__call_closure" (func 20))
  (export "_alloc" (func 24))
  (export "_clear" (func 25))
  (export "_start" (func 26))
  (elem (;0;) (i32.const 0) func 21 22 23)
  (data (;0;) (i32.const 8) "`\00\00\00`")
  (data (;1;) (i32.const 112) "r?\09\c4\10\00\00\00[\00h\00o\00s\00t\00]\00 \00r\00e\00c\00e\00i\00v\00e\00d\00 \00:\9a\e6\d1\1d\00\00\00 \00c\00h\00a\00r\00s\00,\00 \00d\00e\00c\00l\00a\00r\00e\00d\00 \00b\00o\00d\00y\00 \00l\00e\00n\00g\00t\00h\00 ")
  (data (;2;) (i32.const 240) "r?\09\c4x\00\00\00:\9a\e6\d1\a0")
  (@custom "jz:release" "{\22release\22:[\22_start\22]}"))
