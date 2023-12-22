using HorizonSideRobots
rob = Robot("task19.sit", animate = true)

function along!(st_cond, r, side)
    while !st_cond()
        move!(r, side)
        along!(st_cond, r, side)
    end
end

along!(() -> isborder(rob, Ost), rob, Ost)